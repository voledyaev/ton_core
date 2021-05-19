use crate::{
    call::models::EncodedMessage,
    ffi::{match_result, models::NativeResponseExtern, FromPtr},
    helpers::{create_client, get_contract_assets, load_abi, now, query, TonClient},
};
use serde_json::{json, Value};
use std::os::raw::{c_char, c_int, c_uint};
use ton_client::{
    abi::{encode_message, CallSet, FunctionHeader, ParamsOfEncodeMessage, Signer},
    crypto::KeyPair,
    processing::{self, wait_for_transaction, ParamsOfSendMessage, ParamsOfWaitForTransaction},
    tvm::{run_executor, AccountForExecutor::Account, ExecutionOptions, ParamsOfRunExecutor},
};

pub mod models;

#[no_mangle]
#[tokio::main]
pub async unsafe extern "C" fn generate_message(
    contract_type: c_int,
    wc: c_int,
    lifetime: c_uint,
    address: *mut c_char,
    public_key: *mut c_char,
    private_key: *mut c_char,
    method: *mut c_char,
    params: *mut c_char,
) -> NativeResponseExtern {
    let address = address.from_ptr();

    let public_key = public_key.from_ptr();

    let private_key = private_key.from_ptr();

    let method = method.from_ptr();

    let params = params.from_ptr();
    let params: Result<Value, String> = serde_json::from_str(&params).map_err(|e| format!("{}", e));
    let params = match params {
        Ok(params) => params,
        Err(err) => return match_result(Err(err)),
    };

    let (_, abi) = get_contract_assets(contract_type);
    let abi = load_abi(&abi);
    let abi = match abi {
        Ok(abi) => abi,
        Err(err) => return match_result(Err(err)),
    };

    let client = create_client(wc);
    let client = match client {
        Ok(client) => client,
        Err(err) => return match_result(Err(err)),
    };

    let now = now();
    let expire_at = lifetime + now;

    let header = FunctionHeader {
        expire: Some(expire_at),
        ..Default::default()
    };

    let call_set = Some(CallSet {
        function_name: method.to_string(),
        input: Some(params),
        header: Some(header.clone()),
    });

    let keypair = KeyPair {
        public: public_key,
        secret: private_key,
    };

    let message = ParamsOfEncodeMessage {
        abi,
        address: Some(address.to_string()),
        call_set,
        signer: Signer::Keys { keys: keypair },
        ..Default::default()
    };

    let message = encode_message(client.clone(), message)
        .await
        .map_err(|e| format!("{}", e));
    let message = match message {
        Ok(message) => message,
        Err(err) => return match_result(Err(err)),
    };

    let message = EncodedMessage {
        message: message.message,
        message_id: message.message_id,
        expire: header.expire,
        address: address.to_string(),
    };
    let message = serde_json::to_string(&message).unwrap();

    match_result(Ok(message))
}

#[no_mangle]
#[tokio::main]
pub async unsafe extern "C" fn estimate_fees(
    contract_type: c_int,
    wc: c_int,
    message: *mut c_char,
) -> NativeResponseExtern {
    let message = message.from_ptr();
    let message: Result<EncodedMessage, String> =
        serde_json::from_str(&message).map_err(|e| format!("{}", e));
    let message = match message {
        Ok(message) => message,
        Err(err) => return match_result(Err(err)),
    };

    let (_, abi) = get_contract_assets(contract_type);
    let abi = load_abi(&abi);
    let abi = match abi {
        Ok(abi) => abi,
        Err(err) => return match_result(Err(err)),
    };

    let client = create_client(wc);
    let client = match client {
        Ok(client) => client,
        Err(err) => return match_result(Err(err)),
    };

    let acc_boc = query_account_boc(client.clone(), &message.address).await;
    let acc_boc = match acc_boc {
        Ok(acc_boc) => acc_boc,
        Err(err) => return match_result(Err(err)),
    };

    let result = run_executor(
        client.clone(),
        ParamsOfRunExecutor {
            message: message.message,
            account: Account {
                boc: acc_boc,
                unlimited_balance: Some(true),
            },
            execution_options: Some(ExecutionOptions {
                blockchain_config: None,
                block_time: None,
                block_lt: None,
                transaction_lt: None,
            }),
            abi: Some(abi.clone()),
            skip_transaction_check: Some(true),
            return_updated_account: Some(false),
            ..Default::default()
        },
    )
    .await
    .map_err(|e| format!("{}", e));
    let result = match result {
        Ok(result) => result,
        Err(err) => return match_result(Err(err)),
    };

    let fees = result.fees.total_account_fees.to_string();

    match_result(Ok(fees))
}

#[no_mangle]
#[tokio::main]
pub async unsafe extern "C" fn send_message(
    contract_type: c_int,
    wc: c_int,
    message: *mut c_char,
) -> NativeResponseExtern {
    let message = message.from_ptr();
    let message: Result<EncodedMessage, String> =
        serde_json::from_str(&message).map_err(|e| format!("{}", e));
    let message = match message {
        Ok(message) => message,
        Err(err) => return match_result(Err(err)),
    };

    if let Some(expire) = message.expire {
        let now = now();
        if now > expire {
            return match_result(Err("Message expired".to_string()));
        }
    }

    let (_, abi) = get_contract_assets(contract_type);
    let abi = load_abi(&abi);
    let abi = match abi {
        Ok(abi) => abi,
        Err(err) => return match_result(Err(err)),
    };

    let client = create_client(wc);
    let client = match client {
        Ok(client) => client,
        Err(err) => return match_result(Err(err)),
    };

    let callback = |_| async move {};

    let result = processing::send_message(
        client.clone(),
        ParamsOfSendMessage {
            message: message.message.clone(),
            abi: Some(abi.clone()),
            send_events: false,
            ..Default::default()
        },
        callback,
    )
    .await
    .map_err(|e| format!("{}", e));
    let result = match result {
        Ok(result) => result,
        Err(err) => return match_result(Err(err)),
    };

    let result = wait_for_transaction(
        client.clone(),
        ParamsOfWaitForTransaction {
            abi: Some(abi.clone()),
            message: message.message.clone(),
            shard_block_id: result.shard_block_id,
            send_events: true,
            ..Default::default()
        },
        callback.clone(),
    )
    .await
    .map_err(|e| format!("{}", e));
    let result = match result {
        Ok(result) => result,
        Err(err) => return match_result(Err(err)),
    };

    let fees = result.fees.total_account_fees.to_string();

    match_result(Ok(fees))
}

async fn query_account_boc(ton: TonClient, addr: &str) -> Result<String, String> {
    let accounts = query(
        ton,
        "accounts",
        json!({ "id": { "eq": addr } }),
        "boc",
        None,
    )
    .await
    .map_err(|e| format!("{}", e))?;

    if accounts.len() == 0 {
        return Err(format!("Account not found"));
    }
    let boc = accounts[0]["boc"].as_str();
    if boc.is_none() {
        return Err(format!("Account doesn't contain data"));
    }

    Ok(boc.unwrap().to_owned())
}
