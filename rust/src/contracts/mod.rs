use num_derive::FromPrimitive;

pub mod abi;
pub mod code;

#[derive(FromPrimitive)]
pub enum ContractType {
    SafeMultisigWallet = 0,
}
