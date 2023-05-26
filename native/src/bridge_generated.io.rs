use super::*;
// Section: wire functions

#[no_mangle]
pub extern "C" fn wire_platform(port_: i64) {
    wire_platform_impl(port_)
}

#[no_mangle]
pub extern "C" fn wire_rust_release_mode(port_: i64) {
    wire_rust_release_mode_impl(port_)
}

#[no_mangle]
pub extern "C" fn wire_new_counter(port_: i64) {
    wire_new_counter_impl(port_)
}

#[no_mangle]
pub extern "C" fn wire_increment_counter(port_: i64, counter: wire_Counter) {
    wire_increment_counter_impl(port_, counter)
}

#[no_mangle]
pub extern "C" fn wire_decrement_counter(port_: i64, counter: wire_Counter) {
    wire_decrement_counter_impl(port_, counter)
}

#[no_mangle]
pub extern "C" fn wire_do_nothing(port_: i64) {
    wire_do_nothing_impl(port_)
}

// Section: allocate functions

#[no_mangle]
pub extern "C" fn new_Counter() -> wire_Counter {
    wire_Counter::new_with_null_ptr()
}

// Section: related functions

#[no_mangle]
pub extern "C" fn drop_opaque_Counter(ptr: *const c_void) {
    unsafe {
        Arc::<Counter>::decrement_strong_count(ptr as _);
    }
}

#[no_mangle]
pub extern "C" fn share_opaque_Counter(ptr: *const c_void) -> *const c_void {
    unsafe {
        Arc::<Counter>::increment_strong_count(ptr as _);
        ptr
    }
}

// Section: impl Wire2Api

impl Wire2Api<RustOpaque<Counter>> for wire_Counter {
    fn wire2api(self) -> RustOpaque<Counter> {
        unsafe { support::opaque_from_dart(self.ptr as _) }
    }
}
// Section: wire structs

#[repr(C)]
#[derive(Clone)]
pub struct wire_Counter {
    ptr: *const core::ffi::c_void,
}

// Section: impl NewWithNullPtr

pub trait NewWithNullPtr {
    fn new_with_null_ptr() -> Self;
}

impl<T> NewWithNullPtr for *mut T {
    fn new_with_null_ptr() -> Self {
        std::ptr::null_mut()
    }
}

impl NewWithNullPtr for wire_Counter {
    fn new_with_null_ptr() -> Self {
        Self {
            ptr: core::ptr::null(),
        }
    }
}
// Section: sync execution mode utility

#[no_mangle]
pub extern "C" fn free_WireSyncReturn(ptr: support::WireSyncReturn) {
    unsafe {
        let _ = support::box_from_leak_ptr(ptr);
    };
}
