use super::*;
// Section: wire functions

#[wasm_bindgen]
pub fn wire_platform(port_: MessagePort) {
    wire_platform_impl(port_)
}

#[wasm_bindgen]
pub fn wire_rust_release_mode(port_: MessagePort) {
    wire_rust_release_mode_impl(port_)
}

#[wasm_bindgen]
pub fn wire_new_counter(port_: MessagePort) {
    wire_new_counter_impl(port_)
}

#[wasm_bindgen]
pub fn wire_increment_counter(port_: MessagePort, counter: JsValue) {
    wire_increment_counter_impl(port_, counter)
}

#[wasm_bindgen]
pub fn wire_decrement_counter(port_: MessagePort, counter: JsValue) {
    wire_decrement_counter_impl(port_, counter)
}

// Section: allocate functions

// Section: related functions

#[wasm_bindgen]
pub fn drop_opaque_Counter(ptr: *const c_void) {
    unsafe {
        Arc::<Counter>::decrement_strong_count(ptr as _);
    }
}

#[wasm_bindgen]
pub fn share_opaque_Counter(ptr: *const c_void) -> *const c_void {
    unsafe {
        Arc::<Counter>::increment_strong_count(ptr as _);
        ptr
    }
}

// Section: impl Wire2Api

// Section: impl Wire2Api for JsValue

impl Wire2Api<RustOpaque<Counter>> for JsValue {
    fn wire2api(self) -> RustOpaque<Counter> {
        #[cfg(target_pointer_width = "64")]
        {
            compile_error!("64-bit pointers are not supported.");
        }

        unsafe { support::opaque_from_dart((self.as_f64().unwrap() as usize) as _) }
    }
}
