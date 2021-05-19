use crate::{
    call::models::EncodedMessage,
    ffi::{match_result, models::NativeResponseExtern, FromPtr},
    helpers::{create_client_local, get_contract_assets, load_abi},
};
use serde_json::Value;
use std::os::raw::{c_char, c_int};
use ton_client::abi::encode_message;
use ton_client::{
    abi::{CallSet, DeploySet, ParamsOfEncodeMessage, Signer::Keys},
    crypto::KeyPair,
};

#[no_mangle]
#[tokio::main]
pub async unsafe extern "C" fn generate_deploy_message(
    contract_type: c_int,
    wc: c_int,
    address: *mut c_char,
    public_key: *mut c_char,
    private_key: *mut c_char,
    params: *mut c_char,
) -> NativeResponseExtern {
    let address = address.from_ptr();

    let public_key = public_key.from_ptr();

    let private_key = private_key.from_ptr();

    let params = params.from_ptr();
    let params: Result<Value, String> = serde_json::from_str(&params).map_err(|e| format!("{}", e));
    let params = match params {
        Ok(params) => params,
        Err(err) => return match_result(Err(err)),
    };

    let (tvc, abi) = get_contract_assets(contract_type);
    let abi = load_abi(&abi);
    let abi = match abi {
        Ok(abi) => abi,
        Err(err) => return match_result(Err(err)),
    };

    let client = create_client_local();
    let client = match client {
        Ok(client) => client,
        Err(err) => return match_result(Err(err)),
    };

    let deploy_set = DeploySet {
        tvc: base64::encode(&tvc),
        workchain_id: Some(wc),
        ..Default::default()
    };

    let keypair = KeyPair {
        public: public_key,
        secret: private_key,
    };

    let message = ParamsOfEncodeMessage {
        abi,
        address: Some(address.clone()),
        deploy_set: Some(deploy_set),
        call_set: CallSet::some_with_function_and_input("constructor", params),
        signer: Keys { keys: keypair },
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
        expire: None,
        address: address.to_string(),
    };
    let message = serde_json::to_string(&message).unwrap();

    match_result(Ok(message))
}
