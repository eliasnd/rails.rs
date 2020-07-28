#[macro_use]
extern crate helix;

extern crate env_logger;
extern crate log;

pub mod histogram;
pub mod metrics;

ruby! {
    class Lori {
        def hello() {
            println!("Hello from lori!");
        }
    }
}
