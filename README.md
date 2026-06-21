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

- Designed for 1920x1080 (or higher). The store now also works in a non-maximized window; a few inherited SpaceTheme pages may still look best maximized.

## Roadmap

### ShyzosTheme additions
- [x] Rebrand to ShyzosTheme (titlebar + name)
- [x] LuaTools plugin support (Font Awesome icons remapped to FluentSystemIcons)
- [x] Light purple accent (replaces the default blurple)
- [x] Self-hosted install/update script (`install.ps1`)
- [x] Store search tag click fix + assorted CSS bug fixes
- [x] Responsive layout fix for non-maximized windows (store search filters no longer drop below results; game/bundle columns and footer no longer overflow)
- [ ] Custom logo / splash image
- [ ] Custom profile background support (own Steam profile)
- [ ] Submit to the Millennium store (for 1-click install + native auto-update)

### Inherited from SpaceTheme
<details>
  <summary>Store</summary>

  - [ ] Home
  - [ ] (WIP) Navbar
  - [ ] Discovery
  - [ ] (WIP) Pointshop
  - [ ] Charts
  - [ ] (WIP) Gamepage
  - [ ] Bundle info
  - [ ] Hardware page
  - [ ] The Steam Awards page
  - [ ] Steam Replay page
  - [ ] Steam Labs page
  - [ ] Tags page
  - [ ] Community recommends page
  - [ ] Interactive recommender page
  - [ ] Among friends page
  - [ ] Steam curators page
  - [ ] Gift cards page
  - [x] Cart
  - [ ] Wishlist rework
  - [ ] (WIP) Checkout
  - [ ] Categories page
  - [ ] Personal calendar
  - [x] Search result list page
  - [ ] Settings
</details>
<details>
  <summary>Library</summary>

  - [ ] (WIP) Collection page
  - [ ] Gamepage rework
</details>
<details>
  <summary>Community</summary>

  - [ ] Home
  - [ ] Gamepage
    - [ ] Screenshots
    - [ ] Artworks
    - [ ] Guides
    - [ ] News
    - [ ] Reviews
    - [ ] Videos
    - [ ] Workshop
      - [ ] Item page
  - [ ] Discussions
  - [ ] Workshop
  - [ ] Market
    - [ ] Home
    - [ ] Item page
  - [ ] Broadcast
</details>
<details>
  <summary>User</summary>

  - [ ] Profile
  - [ ] Activity
  - [ ] Friends
  - [ ] Content (User's screenshots/artworks/videos/...)
  - [x] Awards
  - [ ] (WIP) Badges
  - [ ] Inventory
  - [ ] Booster Pack Creator
</details>
<details>
  <summary>Friends & Chat</summary>

  - [x] Compact mode support
  - [ ] Chat
  - [ ] Group chat
</details>
<details>
  <summary>Big Picture Mode</summary>

  - [ ] Home
  - [ ] Sidebar
  - [ ] Gamepage
  - [ ] Library
  - [ ] Store
  - [ ] Friends & Chat
  - [ ] Media
  - [ ] Downloads
  - [ ] Settings
</details>
<details>
  <summary>Overlay</summary>

  - [ ] Game Overview
  - [ ] Achievements
  - [ ] Notes
  - [ ] Clock
  - [ ] Guides
  - [ ] Discussions
  - [ ] Recordings & Screenshots
  - [ ] Browser
  - [ ] Controller Settings
</details>
<details>
  <summary>Other</summary>

  - [ ] (WIP) Notifications
  - [ ] (WIP) Steam Settings
  - [ ] (WIP) Inputs
    - [ ] (WIP) Button
    - [ ] Dropdown
    - [ ] Search
    - [ ] (WIP) Color
    - [x] Emoji picker
    - [ ] Checkbox
      - [x] Checkbox Switch
    - [ ] (WIP) Radio
    - [x] Radiogroup
    - [ ] (WIP) Range
  - [ ] Recordings & Screenshots
  - [x] Special Offers
  - [ ] Game server window
  - [ ] Players window
  - [ ] Add non-steam game window
  - [x] About Steam window
</details>

## Credits

ShyzosTheme is a fork of [SpaceTheme](https://github.com/SpaceTheme/Steam) by SpaceEnergy,
used under the MIT License. See [`LICENSE`](LICENSE).
