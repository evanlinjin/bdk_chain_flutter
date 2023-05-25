use std::sync::Mutex;

#[derive(Debug, Default)]
pub struct Counter {
    n: Mutex<u64>,
}

impl Counter {
    pub fn increment(&self) -> u64 {
        let mut n = self.n.lock().unwrap();
        *n = n.saturating_add(1);
        *n
    }

    pub fn decrement(&self) -> u64 {
        let mut n = self.n.lock().unwrap();
        *n = n.saturating_sub(1);
        *n
    }
}
