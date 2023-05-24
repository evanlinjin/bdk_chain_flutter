use flutter_rust_bridge::RustOpaque;

mod counter {
    use std::sync::{Mutex, Arc};

    #[derive(Debug, Default, Clone)]
    pub struct Counter {
        pub inner: Arc<Mutex<usize>>,
    }

    impl Counter {
        pub fn increment(&self) -> usize {
            let mut cell = self.inner.lock().unwrap();
            *cell += 1;
            *cell
        }
    }
}
pub use counter::*;

pub fn new_counter() -> RustOpaque<Counter> {
    RustOpaque::new(Counter::default())
}

pub fn increment_counter(counter: RustOpaque<Counter>) -> usize {
    counter.increment()
}
