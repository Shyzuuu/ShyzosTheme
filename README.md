# ShyzosTheme for Steam

A personal Steam theme for [Millennium](https://steambrew.app/), with a dark, modular-inspired look.

## Features

- Dark, customizable UI with many toggles (sidebar, titlebar, banners, fonts, …)
- Configurable accent colors
- Plugin styling support, including **LuaTools** (its Font Awesome icons are remapped to the bundled FluentSystemIcons)

## Installation

First install [Millennium](https://docs.steambrew.app/users/installing).

### Quick install (recommended)

Run this in PowerShell — it downloads the theme and sets it up. Re-run it anytime to update:

```powershell
irm https://raw.githubusercontent.com/Shyzuuu/ShyzosTheme/main/install.ps1 | iex
```

Then open Millennium settings, select **ShyzosTheme**, and fully restart Steam.

### Manual install

1. Download this repository (Code → Download ZIP) and extract it.
2. Put the folder in `Steam/millennium/themes/` and rename it to `ShyzosTheme`.
3. Select **ShyzosTheme** in Millennium's theme settings and restart Steam.

> Updates: re-run the quick-install command above (it overwrites with the latest version).

## Fully supported plugins

- [HLTB for Steam](https://steambrew.app/plugin?id=f685622bace6)
- [Size on Disk](https://steambrew.app/plugin?id=e73371b61eef)
- LuaTools

## Info

- Some things only work properly when Steam is maximized on a 1920x1080 (or higher) monitor.

## Credits

ShyzosTheme is a fork of [SpaceTheme](https://github.com/SpaceTheme/Steam) by SpaceEnergy,
used under the MIT License. See [`LICENSE`](LICENSE).
