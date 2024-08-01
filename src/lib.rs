use std::env;

pub fn get_version() -> String {
    const CARGO_TOML: &str = include_str!("../Cargo.toml");
    let workspace_toml =
        cargo_toml::Manifest::from_str(CARGO_TOML).expect("Should parse cargo toml");

    String::from(workspace_toml.package().version())
}

pub fn get_version_build() -> String {
    String::from(env!("CARGO_TOML_VERSION"))
}
