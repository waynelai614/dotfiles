## Description
[Cider](https://github.com/msanders/cider) is a simple wrapper for [Homebrew](https://brew.sh/) and [Homebrew Cask](https://github.com/Homebrew/homebrew-cask) that allows you to save your setup across different machines. This lets you to restore a backup without having to deal with the mess that was the state of your previous installation, or painstakingly babysit the process step-by-step.

### Cider allows you to
1. Restore `Homebrew` formulas
2. Restore `Homebrew Cask` applications, fonts
3. Restore dotfiles symlinks
4. Reset macOS user defaults setting
5. Run custom scripts (`before-scripts` and `after-scripts`)

## Installation
### Install Cider
`Cider` is available directly from [PyPI](https://pypi.python.org/pypi/cider):
```sh
$ pip install -U cider
```
ref: [Do I need to install pip?](https://pip.pypa.io/en/stable/installing/#do-i-need-to-install-pip)

### Restore settings
```sh
$ git clone --recursive https://github.com/waynelai614/dotfiles ~/.cider
$ cd ~/.cider
$ sh bootstrap.sh # will run `cider restore` in this script
```

This will symlink the appropriate files to your home directory. Everything is
configured and tweaked within `~/.cider`.

## Useful Links
* macOS
  - [How to reinstall macOS from macOS Recovery](https://support.apple.com/zh-tw/HT204904)
  - [Apple TV Aerial Screensaver for Mac](https://github.com/JohnCoates/Aerial)
  - [How to use Hot Corners on Mac](https://www.imore.com/how-use-hot-corners-mac)
  - [Turn on "three finger drag" for your Force Touch trackpad](https://support.apple.com/zh-hk/HT204609)
  - [Custom shortcut for switching input sources in macOS](https://apple.stackexchange.com/a/301458)
  - [Disable dark mode of specific app](https://superuser.com/a/1418041)
* iTerm2
  - [Use ⌥ ← and ⌥→ to jump forwards / backwards words in iTerm 2](https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x)
* Oh My Zsh
  - [spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt)
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
  - [Oh, My ZSH! with Powerline Fonts. Pretty simple as you deserve!](https://fmacedoo.medium.com/oh-my-zsh-with-powerline-fonts-pretty-simple-as-you-deserve-fbe7f6d23723)
* Editor
  - [Migrating from vim to neovim](https://otaviovaladares.com/2018/09/30/migrating-to-nvim/)
  - [Vscode extension - Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)
