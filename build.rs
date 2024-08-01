fn main() {
    const CARGO_TOML: &str = include_str!("./Cargo.toml");
    let workspace_toml =
        cargo_toml::Manifest::from_str(CARGO_TOML).expect("Should parse cargo toml");

    let cargo_toml_version = workspace_toml.package().version();
    println!("cargo::rustc-env=CARGO_TOML_VERSION={cargo_toml_version}");
}
