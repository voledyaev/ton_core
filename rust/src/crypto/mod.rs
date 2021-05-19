use crate::{
    ffi::{match_result, models::NativeResponseExtern, FromPtr},
    helpers::{create_client_local, DICTIONARY, HD_PATH, WORD_COUNT},
};
use std::os::raw::c_char;
use ton_client::crypto::{
    hdkey_derive_from_xprv_path, hdkey_secret_from_xprv, hdkey_xprv_from_mnemonic,
    mnemonic_from_random, nacl_sign_keypair_from_secret_key, ParamsOfHDKeyDeriveFromXPrvPath,
    ParamsOfHDKeySecretFromXPrv, ParamsOfHDKeyXPrvFromMnemonic, ParamsOfMnemonicFromRandom,
    ParamsOfNaclSignKeyPairFromSecret,
};

#[no_mangle]
pub unsafe extern "C" fn generate_mnemonic() -> NativeResponseExtern {
    let client = create_client_local();
    let client = match client {
        Ok(client) => client,
        Err(err) => return match_result(Err(err)),
    };

    let result = mnemonic_from_random(
        client,
        ParamsOfMnemonicFromRandom {
            dictionary: Some(DICTIONARY),
            word_count: Some(WORD_COUNT),
            ..Default::default()
        },
    )
    .map_err(|e| format!("{}", e))
    .map(|r| r.phrase);

    match_result(result)
}

#[no_mangle]
pub unsafe extern "C" fn generate_keypair_from_mnemonic(
    mnemonic: *mut c_char,
) -> NativeResponseExtern {
    let mnemonic = mnemonic.from_ptr();

    let client = create_client_local();
    let client = match client {
        Ok(client) => client,
        Err(err) => return match_result(Err(err)),
    };

    let hdk_master = hdkey_xprv_from_mnemonic(
        client.clone(),
        ParamsOfHDKeyXPrvFromMnemonic {
            dictionary: Some(1),
            word_count: Some(WORD_COUNT),
            phrase: mnemonic.to_string(),
            ..Default::default()
        },
    )
    .map_err(|e| format!("{}", e));
    let hdk_master = match hdk_master {
        Ok(hdk_master) => hdk_master,
        Err(err) => return match_result(Err(err)),
    };

    let hdk_root = hdkey_derive_from_xprv_path(
        client.clone(),
        ParamsOfHDKeyDeriveFromXPrvPath {
            xprv: hdk_master.xprv,
            path: HD_PATH.to_string(),
            ..Default::default()
        },
    )
    .map_err(|e| format!("{}", e));
    let hdk_root = match hdk_root {
        Ok(hdk_root) => hdk_root,
        Err(err) => return match_result(Err(err)),
    };

    let secret = hdkey_secret_from_xprv(
        client.clone(),
        ParamsOfHDKeySecretFromXPrv {
            xprv: hdk_root.xprv,
            ..Default::default()
        },
    )
    .map_err(|e| format!("{}", e));
    let secret = match secret {
        Ok(secret) => secret,
        Err(err) => return match_result(Err(err)),
    };

    let keypair = nacl_sign_keypair_from_secret_key(
        client.clone(),
        ParamsOfNaclSignKeyPairFromSecret {
            secret: secret.secret,
            ..Default::default()
        },
    )
    .map_err(|e| format!("{}", e));
    let mut keypair = match keypair {
        Ok(keypair) => keypair,
        Err(err) => return match_result(Err(err)),
    };

    let secret = hex::decode(&keypair.secret).unwrap();
    if secret.len() > 32 {
        keypair.secret = hex::encode(&secret[..32]);
    }

    let keypair = serde_json::to_string(&keypair).unwrap();

    match_result(Ok(keypair))
}
