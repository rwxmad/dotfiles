```
______         _     __  _  _
|  _  \       | |   / _|(_)| |
| | | |  ___  | |_ | |_  _ | |  ___  ___
| | | | / _ \ | __||  _|| || | / _ \/ __|
| |/ / | (_) || |_ | |  | || ||  __/\__ \
|___/   \___/  \__||_|  |_||_| \___||___/
```

## Installation

1. Clone this repo with submodules

```bash
git clone --recurse-submodules git@github.com:rwxmad/dotfiles.git
```

2. Run `install.sh`

## Shell setup

- [ghostty](https://github.com/ghostty-org/ghostty) - 👻 Ghostty is a fast, feature-rich, and cross-platform terminal emulator that uses platform-native UI and GPU acceleration
- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) - Unix shell that is built on top of bash with additional features
- [starship](https://github.com/starship/starship) - Cross-shell prompt
- [tmux](https://github.com/tmux/tmux) - Terminal multiplexer
- [nvim](https://github.com/neovim/neovim) - Vim-fork focused on extensibility and usability
- [ripgrep](https://github.com/BurntSushi/ripgrep) - A line-oriented search tool that recursively searches the current directory for a regex pattern
- [fd](https://github.com/sharkdp/fd) - A simple, fast and user-friendly alternative to 'find'
- [eza](https://github.com/eza-community/eza) - A modern replacement for ‘ls’
- [delta](https://github.com/dandavison/delta) - A syntax-highlighting pager for git, diff, and grep output

More tools in [Brewfile](.config/brew/Brewfile)

## Scripts

You can find aliases for all scripts in [aliases.zsh](.config/zsh/aliases.zsh)

|                   Script                   |          Description           |            Alias |
| :----------------------------------------: | :----------------------------: | ---------------: |
|      [`ip.sh`](.config/scripts/ip.sh)      | Return local and external ipv4 |             `ip` |
| [`extract.sh`](.config/scripts/extract.sh) |    Extract compressed files    | `extract {file}` |
