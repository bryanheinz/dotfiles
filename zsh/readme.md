# zsh-config

This is my lite-ish ZSH config that takes my favorite parts from oh-my-zsh without having to install oh-my-zsh and adds my own custom alias' and ZSH functions.

## Install

To install the ZSH config without the rest of dotfiles, follow these steps:

1. Clone repo into `/usr/local`

```shell
cd /usr/local
git clone --no-checkout --depth 1 git@github.com:bryanheinz/dotfiles.git zsh-config
cd zsh-config
git sparse-checkout set zsh
git checkout
```

2. Link the config

```shell
ln -s /usr/local/zsh-config/zsh/zshrc.zsh ~/.zshrc
```
