use std::os::raw::{c_char, c_int};

#[repr(C)]
pub struct NativeResponseExtern {
    pub status_code: c_int,
    pub payload: *mut c_char,
}
