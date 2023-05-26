use std::{
    collections::HashMap,
    io::{Read, Write},
    sync::mpsc::Sender,
};

use flutter_rust_bridge::StreamSink;

use crate::api::{event_stream, FfiEvent, PortDesc, EVENT_STREAM};

pub trait Serial {
    type Port: Read + Write;

    fn avaliable_ports(&mut self) -> Vec<PortDesc>;
    fn open_device_port(&mut self, serial_number: &str) -> anyhow::Result<Self::Port>;
}

pub struct FfiPort {}

impl Read for FfiPort {
    fn read(&mut self, buf: &mut [u8]) -> std::io::Result<usize> {
        todo!()
    }
}

impl Write for FfiPort {
    fn write(&mut self, buf: &[u8]) -> std::io::Result<usize> {
        todo!()
    }

    fn flush(&mut self) -> std::io::Result<()> {
        todo!()
    }
}

#[derive(Default)]
pub struct FfiSerial {
    avaliable_ports_req: Vec<PortDesc>,
    pending_opens: HashMap<String, Sender<()>>,
}

impl Serial for FfiSerial {
    type Port = FfiPort;

    fn avaliable_ports(&mut self) -> Vec<PortDesc> {
        self.avaliable_ports_req.clone()
    }

    fn open_device_port(&mut self, serial_number: &str) -> anyhow::Result<Self::Port> {
        if !event_stream().add(FfiEvent::ReqOpenPort(serial_number.to_string())) {
            return Err(anyhow::anyhow!("serial ports cannot open"));
        }

        let (tx, rx) = std::sync::mpsc::channel::<()>();
        self.pending_opens.insert(serial_number.to_string(), tx);
        let _todo = rx.recv().unwrap();

        Ok(FfiPort {})
    }
}

impl FfiSerial {}

// pub struct SerialApi {
//     serial: Mutex<Box<dyn Serial<Port = ()>>>,
// }
