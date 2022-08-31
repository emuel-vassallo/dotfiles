<div align=center>
  <h1><a href="https://github.com/emuel-vassallo" />Emuel</a>'s dotfiles</h1>
  <p>⚙️ My personal dotfiles for BSPWM, Neovim, Kitty, Zsh, etc.</p>
  <p>
    <a href="https://github.com/emuel-vassallo/dotfiles/stargazers"><img src="https://img.shields.io/github/stars/emuel-vassallo/dotfiles?colorA=151515&colorB=8C977D&style=for-the-badge"></a>
    <a href="https://github.com/emuel-vassallo/dotfiles/issues"><img src="https://img.shields.io/github/issues/emuel-vassallo/dotfiles?colorA=151515&colorB=B66467&style=for-the-badge"></a>
    <a href="https://github.com/emuel-vassallo/dotfiles/network/members"><img src="https://img.shields.io/github/forks/emuel-vassallo/dotfiles?colorA=151515&colorB=8DA3B9&style=for-the-badge"></a>
  </p>
</div>

## 🌟 Showcase

![Setup showcase](https://raw.githubusercontent.com/emuel-vassallo/dotfiles/main/images/screenshots/neofetch-nvim-dashboard.png)
![Neovim dashboard](https://raw.githubusercontent.com/emuel-vassallo/dotfiles/main/images/screenshots/nvim-dashboard.png)
![Neovim setup](https://raw.githubusercontent.com/emuel-vassallo/dotfiles/main/images/screenshots/nvim-setup.png)

## ℹ️ Information

| Type                 | Name                                                                                        |
| -------------------- | ------------------------------------------------------------------------------------------- |
| Operating System     | [EndeavourOS](https://endeavouros.com/)                                                     |
| Window Manager       | [BSPWM](https://github.com/baskerville/bspwm)                                               |
| Terminal Emulator    | [Kitty](https://sw.kovidgoyal.net/kitty/)                                                   |
| Shell                | [Zsh](https://www.zsh.org/)                                                                 |
| Colorscheme          | [Paradise](https://github.com/Manas140/paradise)                                            |
| Compositor           | [Picom](https://github.com/yshui/picom)                                                     |
| Web Browser          | [Firefox](https://www.mozilla.org/en-US/firefox)                                            |
| Text Editor          | [Neovim](https://neovim.io/)                                                                |
| File Manager         | [Ranger](https://github.com/ranger/ranger), [Thunar](https://github.com/xfce-mirror/thunar) |
| Application Launcher | [Rofi](https://github.com/davatorium/rofi)                                                  |
| Panel                | [Polybar](https://github.com/polybar/polybar)                                               |
| Firefox Custom CSS   | [Cascade](https://github.com/andreasgrafen/cascade)                                         |

## ⚡ Dependencies

### Packages

- **Programs:** kitty rofi ranger polybar gotop sh picom neovim peek lxappearance chromium flameshot libreoffice flatpak tlp redshift feh zsh fd brightnessctl
- **Flatpak Applications:** spotify ms-teams obs-studio
- **Emoji Fonts:** noto-fonts noto-fonts-emoji noto-fonts-extra noto-fonts-cjk

### Fonts

- **Neovim Font:** [Fantasque Sans Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FantasqueSansMono.zip)
- **Polybar Font:** [Iosevka Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip)

## 🚀 Setup

<details>
  <summary><strong>Firefox Custom CSS</strong></summary>

Reference: <a href="https://github.com/andreasgrafen/cascade/">Cascade's README</a>

1. Type `about:config` into your URL bar. Click on the **I accept the risk** button if you're shown a warning.
2. Seach for **`toolkit.legacyUserProfileCustomizations.stylesheets`**, **`layers.acceleration.force-enabled`**, **`gfx.webrender.all`** and **`svg.context-properties.content.enabled`** and set them to **`true`**.
3. Go to your profile folder:
   - Linux: `$HOME/.mozilla/firefox/######.default-release/`
   - MacOS: `Users/[USERNAME]/Library/Application Support/Firefox/Profiles/######.default-release`
   - Windows: `C:\Users\[USERNAME]\AppData\Roaming\Mozilla\Firefox\Profiles\######.default-release`
4. If it doesn't exist already create a folder called `chrome`.
5. Copy your desired `userChrome.css` into that folder.
6. _optional_ Customise everything to your liking.
</details>

## 💙 Thanks and credits

- [datsfilipe](https://github.com/datsfilipe/dots)
- [Manas140](https://github.com/Manas140/dotfiles)
- [Stardust-kyun](https://github.com/Stardust-kyun/dotfiles)
- [gabrielzschmitz](https://github.com/gabrielzschmitz/dotfiles)
- [0xdhrv](https://github.com/0xdhrv/dotfiles)
- [Keyitdev](https://github.com/Keyitdev/) for [README template](https://github.com/Keyitdev/dotfiles/blob/master/README.md)
