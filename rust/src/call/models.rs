use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
pub struct EncodedMessage {
    pub message_id: String,
    pub message: String,
    pub expire: Option<u32>,
    pub address: String,
}
