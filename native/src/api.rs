// This is the entry point of your Rust library.
// When adding new code to your project, note that only items used
// here will be transformed to their Dart equivalents.

use std::sync::RwLock;

use flutter_rust_bridge::{RustOpaque, StreamSink};
use lazy_static::lazy_static;

pub use crate::counter::Counter;

lazy_static! {
    pub static ref EVENT_STREAM: RwLock<Option<StreamSink<FfiEvent>>> = RwLock::default();
}

pub(crate) fn event_stream() -> StreamSink<FfiEvent> {
    let l = EVENT_STREAM.read().unwrap();
    l.as_ref().unwrap().clone()
}

// pub obtain_event_streams()

pub enum Platform {
    Unknown,
    Android,
    Ios,
    Windows,
    Unix,
    MacIntel,
    MacApple,
    Wasm,
}

pub fn platform() -> Platform {
    if cfg!(windows) {
        Platform::Windows
    } else if cfg!(target_os = "android") {
        Platform::Android
    } else if cfg!(target_os = "ios") {
        Platform::Ios
    } else if cfg!(all(target_os = "macos", target_arch = "aarch64")) {
        Platform::MacApple
    } else if cfg!(target_os = "macos") {
        Platform::MacIntel
    } else if cfg!(target_family = "wasm") {
        Platform::Wasm
    } else if cfg!(unix) {
        Platform::Unix
    } else {
        Platform::Unknown
    }
}

// The convention for Rust identifiers is the snake_case,
// and they are automatically converted to camelCase on the Dart side.
pub fn rust_release_mode() -> bool {
    cfg!(not(debug_assertions))
}

pub fn new_counter() -> RustOpaque<Counter> {
    RustOpaque::new(Counter::default())
}

pub fn increment_counter(counter: RustOpaque<Counter>) -> u64 {
    counter.increment()
}

pub fn decrement_counter(counter: RustOpaque<Counter>) -> u64 {
    counter.decrement()
}

#[derive(Debug, Clone)]
pub enum FfiEvent {
    ReqOpenPort(String),
}

#[derive(Debug, Clone)]
pub struct PortDesc {
    pub vid: String,
    pub pid: String,
    pub serial_number: String,
}

pub fn do_nothing(events: StreamSink<FfiEvent>) {}
