use self::models::NativeResponseExtern;
use std::{
    ffi::{CStr, CString},
    os::raw::c_char,
};

pub mod models;

pub fn match_result(result: Result<String, String>) -> NativeResponseExtern {
    match result {
        Ok(success) => NativeResponseExtern {
            status_code: 0,
            payload: success.to_ptr(),
        },
        Err(error) => NativeResponseExtern {
            status_code: 1,
            payload: error.to_ptr(),
        },
    }
}

#[no_mangle]
pub extern "C" fn cstring_free(str: *mut c_char) {
    str.from_ptr();
}

pub trait ToPtr {
    fn to_ptr(self) -> *mut c_char;
}

impl ToPtr for String {
    fn to_ptr(self) -> *mut c_char {
        CString::new(self).unwrap().into_raw()
    }
}

pub trait FromPtr {
    fn from_ptr(self) -> String;
}

impl FromPtr for *mut c_char {
    fn from_ptr(self) -> String {
        let string = unsafe { CStr::from_ptr(self) };
        string.to_str().unwrap().to_owned()
    }
}
