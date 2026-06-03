```
______         _     __  _  _
|  _  \       | |   / _|(_)| |
| | | |  ___  | |_ | |_  _ | |  ___  ___
| | | | / _ \ | __||  _|| || | / _ \/ __|
| |/ / | (_) || |_ | |  | || ||  __/\__ \
|___/   \___/  \__||_|  |_||_| \___||___/
```

## Installation

1. Clone this repo

```bash
git clone --recurse-submodules git@github.com:rwxmad/dotfiles.git
```

2. Run [install](./install)

```bash
chmod +x ./install
./install
```

## Shell setup

- [ghostty](https://github.com/ghostty-org/ghostty) - Fast, feature-rich, cross-platform terminal emulator with GPU acceleration
- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) - Unix shell built on top of bash with additional features
- [starship](https://github.com/starship/starship) - Cross-shell prompt
- [tmux](https://github.com/tmux/tmux) - Terminal multiplexer
- [nvim](https://github.com/neovim/neovim) - Vim-fork focused on extensibility and usability
- [mise](https://github.com/jdx/mise) - Dev tools, env vars, task runner
- [ripgrep](https://github.com/BurntSushi/ripgrep) - Line-oriented search tool that recursively searches for a regex pattern
- [fd](https://github.com/sharkdp/fd) - Simple, fast and user-friendly alternative to find
- [eza](https://github.com/eza-community/eza) - Modern replacement for ls
- [delta](https://github.com/dandavison/delta) - Syntax-highlighting pager for git, diff, and grep output

More tools in [pacman.txt](./pacman.txt)

## Scripts

Aliases are defined in [aliases.zsh](.config/zsh/modules/aliases.zsh)

|                   Script                   |          Description           |     Alias |
| :----------------------------------------: | :----------------------------: | --------: |
|      [`ip.sh`](.config/scripts/ip.sh)      | Return local and external IPv4 |    `ipv4` |
| [`extract.sh`](.config/scripts/extract.sh) |    Extract compressed files    | `extract` |
| [`weather.sh`](.config/scripts/weather.sh) |      Show current weather      | `weather` |
