# .files

The goal of the repo is to collect all of my various config files into one primary directory.

## Setup

tl;dr clone or download this repo, symlink to `~/.files`

### Git

```bash
git clone https://github.com/bryanheinz/dotfiles.git
mv dotfiles ~/.files
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

## EditorConfig

```bash
ln -s ~/.files/editorconfig ~/.editorconfig
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
