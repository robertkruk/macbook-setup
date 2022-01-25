# 💻 macbook-setup

Script to setup my M1 Macbook. Optimized for DevOps engineeer.

_NOTE_ this is BETA and still WIP.

## ⚙️ Usage

_NOTE_ not working. run manually.
`sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/{user}/macbook-setup/main/setup.sh)"`

To upgrade all softwares installed by cask later, just run this below command:

`brew upgrade --cask --greedy`

## 🎯 Features

- Brew [brew.sh](https://brew.sh)

## ⚠️ Note

brew install list needs cleanup

# Nix

run the following after configuring nix.conf
`nix-env -iA nixpkgs.nix`

## Brew list

current export
`brew list -1 `

```

```
