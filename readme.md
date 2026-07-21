# .files

The goal of the repo is to collect all of my various config files into one primary directory.

## Setup

tl;dr clone or download this repo, then rename or symlink to `~/.files`

### Git

```bash
cd ~
git clone https://github.com/bryanheinz/dotfiles.git .files
```

### Download

```bash
# download curl
curl -L https://github.com/bryanheinz/dotfiles/archive/main.tar.gz -o dotfiles.tar.gz
# download wget
wget https://github.com/bryanheinz/dotfiles/archive/main.tar.gz -O dotfiles.tar.gz
# install
tar -xzf dotfiles.tar.gz
mv dotfiles-main ~/.files
# cleanup
rm dotfiles.tar.gz
```

## General Configs

```shell
# EditorConfig https://editorconfig.org
ln -s ~/.files/_configs/editorconfig ~/.editorconfig

# gitconfig
ln -s ~/.files/_configs/gitconfig ~/.gitconfig

# inputrc for ash/bash on Synology
ln -s ~/.files/_configs/inputrc ~/.inputrc

# logrc for macOS `log`
ln -s ~/.files/_configs/logrc ~/.logrc

# pylint
ln -s ~/.files/_configs/pylintrc ~/.pylintrc

# tmux
ln -s ~/.files/_configs/tmux.conf ~/.tmux.conf
```

## VIM Setup

Run the `vim/setup.zsh` script

```shell
~/.files/vim/setup.zsh
```

## Zed Config

[Zed Docs](https://zed.dev/docs/)

Zed's files seem to be all over the place.

- Parimary settings `~/.config/zed/settings.json`
- Extensions `~/Library/Application Support/Zed/extensions`

The docs specify `~/.zed/settings.json` as the default location for macOS, but i'm seeing `~/.config/zed`.

**Zed Setup**

```bash
ln -s ~/.files/zed/zed-settings.json ~/.config/zed/settings.json
ln -s ~/.files/zed/keymap.json ~/.config/zed/keymap.json
```

## ZSH Setup

This is most of my ZSH config. Built to pull aspects I liked from oh-my-zsh, but feels faster and without the need for constant updating. It should work with macOS and Debian Linux.

```shell
mkdir /usr/local/zsh-config
ln -s ~/.files/zsh /usr/local/zsh-config/zsh
ln -s ~/.files/zsh/zshrc.zsh ~/.zshrc
```

The ZSH folder is linked into `/usr/local` so that the zshrc config can be linked into all user accounts on the system if wanted.
