# Tex Tectonic Setup

This repository is a setup configuration to making writing LaTeX documents easier.
The idea is to use Tectonic together with Just to allow fast and deterministic out-of-the-box development in LaTeX.

## Installation

Just copy the below commands.

### Installing Curl

#### Debian/Ubuntu

```
sudo apt install curl
```

#### Fedora

```
sudo dnf install curl
```

#### Arch

```
sudo pacman -S curl
```

#### Windows & MacOS

For Windows and Linux there is a dedicated documentation found here: [Installing Curl](https://developer.zendesk.com/documentation/api-basics/getting-started/installing-and-using-curl/#installing-curl)

### Installing Rust

#### Linux & MacOS

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update
```

#### Windows

```
Invoke-WebRequest -Uri https://sh.rustup.rs -UseBasicParsing | Invoke-Expression
```

Run `rustup update` after restarting PowerShell.


### Installing Tectonic, Just, Biber and watchexec-cli

#### Debian/Ubuntu

Local `tectonic` installation: 
```
curl --proto '=https' --tlsv1.2 -fsSL https://drop-sh.fullyjustified.net |sh
```

Global `tectonic` installation: 
```
curl --proto '=https' --tlsv1.2 -fsSL https://drop-sh.fullyjustified.net |sh
sudo mv tectonic /usr/local/bin/
sudo chmod +x /usr/local/bin/tectonic
exec $SHELL
```

Add `/usr/local/bin` to your PATH, depending on your shell this can be done differently.

Installing just, watchexec-cli and biber
```
cargo install just
cargo install watchexec-cli
sudo apt install biber
```

## Motivation

Since most tools are either slow or add unnecessary complexity I tried to keep it powerful enough to justify the additional dependencies.

