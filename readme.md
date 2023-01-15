# Patrick's Dotfiles

Personal Setup Notes

## Install Prerequisites

- [git](./docs/git.md)
- vscode
  - Enable Settings Sync
- CopyQ
  - Ditto on Windows
- Chrome
- [Fonts](./docs/fonts.md)

## Folder Setup

Create 3 folders in code directory

- ```~/code/p``` Used for personal projects
- ```~/code/w``` Used for work projects
- ```~/code/f``` Used for forked projects

## Clone dotfiles repo

```bash
# clone dotfiles repo locally
cd ~
mkdir -p ~/code/p
cd ~/code/p
git clone https://github.com/slyedoc/dotfiles.git
```

## Setup ZSH link

```bash
# make symbolic link for .zshrc
cd ~/
mv .zshrc .zshrc.old
ln -s ~/code/p/dotfiles/.zshrc ~/.zshrc
```
