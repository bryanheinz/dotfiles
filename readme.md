# .files

The goal of the repo is to collect all of my various config files into one primary directory.

## Setup

tl;dr clone or download this repo, symlink to `~/.files`

https://github.com/bryanheinz/dotfiles/archive/main.tar.gz
https://github.com/bryanheinz/dotfiles.git

### Clone

```shell
git clone https://github.com/bryanheinz/dotfiles.git
ln -s $(pwd)/dotfiles ~/.files
```

### curl

```shell
curl -L https://github.com/bryanheinz/dotfiles/archive/main.tar.gz -o dotfiles.tar.gz
tar -xzf dotfiles.tar.gz
mkdir ~/.files
cp -af dotfiles-main/* ~/.files/
```

## Zed Config

[Zed Docs](https://zed.dev/docs/)

Zed's files seem to be all over the place.

- Parimary settings `~/.config/zed/settings.json`
- Extensions `~/Library/Application Support/Zed/extensions`

The docs specify `~/.zed/settings.json` as the default location for macOS, but i'm seeing `~/.config/zed`.

**Zed Setup**

```shell
/bin/ln -s ~/.files/zed-settings.json ~/.config/zed/settings.json
```
