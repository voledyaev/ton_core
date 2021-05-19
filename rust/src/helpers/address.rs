use crate::{
    ffi::{match_result, models::NativeResponseExtern, FromPtr},
    helpers::{create_client_local, get_contract_assets, load_abi},
};
use serde_json::Value;
use std::os::raw::{c_char, c_int};
use tokio;
use ton_client::abi::{DeploySet, ParamsOfEncodeMessage, Signer};

#[no_mangle]
#[tokio::main]
pub async unsafe extern "C" fn generate_address(
    contract_type: c_int,
    wc: c_int,
    public_key: *mut c_char,
    initial_data: *mut c_char,
) -> NativeResponseExtern {
    let public_key = public_key.from_ptr();

    let initial_data = initial_data.from_ptr();
    let initial_data: Result<Value, String> =
        serde_json::from_str(&initial_data).map_err(|e| format!("{}", e));

    let initial_data = match initial_data {
        Ok(initial_data) => initial_data,
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
        initial_data: Some(initial_data),
        ..Default::default()
    };
    let result = ton_client::abi::encode_message(
        client.clone(),
        ParamsOfEncodeMessage {
            abi,
            deploy_set: Some(deploy_set),
            signer: Signer::External { public_key },
            ..Default::default()
        },
    )
    .await
    .map_err(|e| format!("{}", e));

    let result = match result {
        Ok(result) => result,
        Err(err) => return match_result(Err(err)),
    };

    let address = result.address;

    match_result(Ok(address))
}
