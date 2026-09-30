# zsh-config

This is my lite-ish ZSH config that takes my favorite parts from oh-my-zsh without having to install oh-my-zsh and adds my own custom alias' and ZSH functions.

## Install

To install the ZSH config without the rest of dotfiles, follow these steps:

```shell
cd ~
git clone --no-checkout --depth 1 git@github.com:bryanheinz/dotfiles.git .files
cd ~/.files
git sparse-checkout set zsh
git checkout
echo 'source "$HOME/.files/zsh/zshrc.zsh"' >> ~/.zshrc
```
