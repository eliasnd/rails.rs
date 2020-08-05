#[macro_use]
extern crate helix;

extern crate env_logger;
extern crate log;

pub mod histogram;
pub mod metrics;

ruby! {
    class Lori {
        def handleInput(file: String, input: String) -> String {
            input
        }
    }
}
