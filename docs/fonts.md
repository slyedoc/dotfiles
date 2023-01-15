# Fonts

Copy fonts to the correct location:

```bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

For vscode, add the following to settings.json, though this should be synced automatically.

```json
    "terminal.integrated.fontFamily": "'DroidSansMono Nerd Font'"
```

> Note: Use ```fc-cache -fv``` to update the font cache and ```fc-list``` to list the fonts and get the name to use.
