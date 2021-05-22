use crate::{
    ffi::{match_result, models::NativeResponseExtern, FromPtr},
    helpers::create_client,
};
use serde_json::json;
use std::os::raw::{c_char, c_int, c_uint, c_ulonglong};
use ton_client::net::{query_collection, OrderBy, ParamsOfQueryCollection, SortDirection};

#[no_mangle]
#[tokio::main]
pub async unsafe extern "C" fn get_account(
    wc: c_int,
    address: *mut c_char,
) -> NativeResponseExtern {
    let address = address.from_ptr();

    let client = create_client(wc);
    let client = match client {
        Ok(client) => client,
        Err(err) => return match_result(Err(err)),
    };

    let filter = json!({ "id": { "eq": address } });
    let account_query_fields: &str = r#"
        acc_type_name
        balance(format: DEC)
        last_paid
        last_trans_lt
        data
    "#;

    let query_result = query_collection(
        client.clone(),
        ParamsOfQueryCollection {
            collection: "accounts".to_string(),
            filter: Some(filter),
            result: account_query_fields.to_string(),
            limit: Some(1),
            ..Default::default()
        },
    )
    .await
    .map_err(|e| format!("{}", e));
    let query_result = match query_result {
        Ok(query_result) => query_result,
        Err(err) => return match_result(Err(err)),
    };

    let result = serde_json::to_string(&query_result.result).map_err(|e| format!("{}", e));
    let result = match result {
        Ok(result) => result,
        Err(err) => return match_result(Err(err)),
    };

    match_result(Ok(result))
}

#[no_mangle]
#[tokio::main]
pub async unsafe extern "C" fn get_transactions(
    wc: c_int,
    address: *mut c_char,
    last_transaction_lt: c_ulonglong,
    limit: c_uint,
) -> NativeResponseExtern {
    let address = address.from_ptr();

    let client = create_client(wc);
    let client = match client {
        Ok(client) => client,
        Err(err) => return match_result(Err(err)),
    };

    let filter = json!({ "account_addr": { "eq": address }, "lt": { "le": last_transaction_lt.to_string() } });
    let order = vec![OrderBy {
        direction: SortDirection::DESC,
        path: "lt".to_string(),
    }];
    let transactions_query_fields: &str = r#"
        id,
        lt,
        now,
        prev_trans_lt,
        in_message {
            src,
            dst,
            value,
            fwd_fee,
        },
        out_messages {
            src,
            dst,
            value,
            fwd_fee,
        },
    "#;

    let query_result = query_collection(
        client.clone(),
        ParamsOfQueryCollection {
            collection: "transactions".to_string(),
            filter: Some(filter),
            result: transactions_query_fields.to_string(),
            order: Some(order),
            limit: Some(limit),
            ..Default::default()
        },
    )
    .await
    .map_err(|e| format!("{}", e));
    let query_result = match query_result {
        Ok(query_result) => query_result,
        Err(err) => return match_result(Err(err)),
    };

    let result = serde_json::to_string(&query_result.result).map_err(|e| format!("{}", e));
    let result = match result {
        Ok(result) => result,
        Err(err) => return match_result(Err(err)),
    };

    match_result(Ok(result))
}
