# Rust Compile time optimization through build.rs

```sh
cargo binstall cargo-asm

cargo asm include_str_demo::get_version_build --no-color &> get_version_build.asm

cargo asm include_str_demo::get_version --no-color &> get_version.asm
```
