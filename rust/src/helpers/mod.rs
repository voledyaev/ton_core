use crate::contracts::{
    abi::SAFE_MULTISIG_WALLET_ABI, code::SAFE_MULTISIG_WALLET_TVC, ContractType,
};
use num_traits::FromPrimitive;
use std::{
    os::raw::c_int,
    sync::Arc,
    time::{SystemTime, UNIX_EPOCH},
};
use ton_client::{
    abi::{Abi, AbiConfig, AbiContract},
    crypto::CryptoConfig,
    error::ClientError,
    net::{query_collection, NetworkConfig, OrderBy, ParamsOfQueryCollection},
    ClientConfig, ClientContext,
};

pub mod address;

pub const WORD_COUNT: u8 = 12;
pub const DICTIONARY: u8 = 1;
pub const HD_PATH: &str = "m/44'/396'/0'/0/0";
pub const URL: &str = "https://main.ton.dev";
pub const RETRIES: u8 = 5;
pub const TIMEOUT: u32 = 60000;
pub const GROW_FACTOR: f32 = 1.3;

pub type TonClient = Arc<ClientContext>;

pub fn create_client_local() -> Result<TonClient, String> {
    let client = ClientContext::new(ClientConfig::default()).map_err(|e| format!("{}", e))?;

    Ok(Arc::new(client))
}

pub fn create_client(wc: i32) -> Result<TonClient, String> {
    let client_conf = ClientConfig {
        abi: AbiConfig {
            workchain: wc,
            message_expiration_timeout: TIMEOUT,
            message_expiration_timeout_grow_factor: GROW_FACTOR,
        },
        crypto: CryptoConfig {
            mnemonic_dictionary: DICTIONARY,
            mnemonic_word_count: WORD_COUNT,
            hdkey_derivation_path: HD_PATH.to_string(),
        },
        network: NetworkConfig {
            server_address: Some(URL.to_string()),
            endpoints: Some(vec![URL.to_string()]),
            network_retries_count: 3,
            message_retries_count: RETRIES as i8,
            message_processing_timeout: 30000,
            wait_for_timeout: 30000,
            out_of_sync_threshold: TIMEOUT / 2,
            max_reconnect_timeout: 1000,
            ..Default::default()
        },
        boc: Default::default(),
    };

    let client = ClientContext::new(client_conf).map_err(|e| format!("{}", e))?;

    Ok(Arc::new(client))
}

pub fn load_abi(abi: &str) -> Result<Abi, String> {
    let contract = serde_json::from_str::<AbiContract>(abi).map_err(|e| format!("{}", e))?;
    let contract = Abi::Contract(contract);

    Ok(contract)
}

pub async fn query(
    ton: TonClient,
    collection: &str,
    filter: serde_json::Value,
    result: &str,
    order: Option<Vec<OrderBy>>,
) -> Result<Vec<serde_json::Value>, ClientError> {
    query_collection(
        ton,
        ParamsOfQueryCollection {
            collection: collection.to_owned(),
            filter: Some(filter),
            result: result.to_owned(),
            order,
            ..Default::default()
        },
    )
    .await
    .map(|r| r.result)
}

pub fn get_contract_assets(contract_type: c_int) -> (Vec<u8>, String) {
    let (tvc, abi) = match FromPrimitive::from_i32(contract_type) {
        Some(ContractType::SafeMultisigWallet) => {
            (SAFE_MULTISIG_WALLET_TVC, SAFE_MULTISIG_WALLET_ABI)
        }
        None => (SAFE_MULTISIG_WALLET_TVC, SAFE_MULTISIG_WALLET_ABI),
    };

    (tvc.to_owned(), abi.to_string())
}

pub fn now() -> u32 {
    SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .unwrap()
        .as_secs() as u32
}
