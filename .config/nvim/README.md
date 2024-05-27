```shell
███╗   ██╗██╗   ██╗██╗███╗   ███╗     ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗
████╗  ██║██║   ██║██║████╗ ████║    ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝
██╔██╗ ██║██║   ██║██║██╔████╔██║    ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║    ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║    ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝     ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝
```

## Requirements

- [curl](https://github.com/curl/curl)
- [neovim](https://github.com/neovim/neovim) (>= 0.10)
- [packer.nvim](https://github.com/wbthomason/packer.nvim)
- [npm](https://github.com/npm/cli)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [glow](https://github.com/charmbracelet/glow)
- [chafa](https://github.com/hpjansson/chafa)

## Installation

#### Install neovim, tree-sitter, luajit, ripgrep

```shell
brew install --HEAD neovim tree-sitter luajit ripgrep
```

#### Install packer.nvim

##### Unix, Linux

```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

##### Windows Powershell

```shell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

#### Nvim configuration layout

```shell
├── README.md
├── init.lua # =========================> Root config file
├── lua # ==============================> Lua configs directory
│   └── rwxmad
│       ├── colors.lua #================> Colorscheme config
│       ├── plugins # ===================> Plugin configs
│       │   ├── bufferline.lua
│       │   ├── lsp.lua
│       │   ├── telescope.lua
│       │   └── treesitter.lua
│       ├── keymaps.lua # =============> Keymaps
│       └── options.lua # =============> General settings
└── stylua.toml
```

## Main mappings

- `<Leader>` key set as `,`
- `<Escape>` from insert mode can be applied by `jj`
- `<leader>` `w` - Write file
- `<leader>` `q` - Quit

### Some basic mappings

| Keymap            | Description                                                                                                    |
| ----------------- | -------------------------------------------------------------------------------------------------------------- |
| `<leader><space>` | Turn off search highlight                                                                                      |
| `<leader>` `ff`   | Lists files in your current working directory                                                                  |
| `<leader>` `fb`   | Telescope file browser                                                                                         |
| `<leader>` `fg`   | Search for a string in your current working directory and get results live as you type (respecting .gitignore) |
| `<leader>` `bg`   | Search for a string in your current buffer                                                                     |
| `<leader>` `g`    | Jump to any word in buffer                                                                                     |
| `<C-n>`           | Next item in completion list                                                                                   |
| `<C-p>`           | Previous item in completion list                                                                               |
| `<C-n>`           | NvimTreeToggle                                                                                                 |
| `<leader>` `n`    | NvimTreeFindFile                                                                                               |
| `<A-d>`           | Toggle terminal                                                                                                |
| `gcc`             | Comment out a line                                                                                             |
| `gc`              | Comment out the target of a motion                                                                             |
| `gcap`            | Comment out a paragraph                                                                                        |

## Plugins

| Plugin                                                                                          | Description                                                                                                                                       |
| ----------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| [packer.nvim](https://github.com/wbthomason/packer.nvim)                                        | A use-package inspired plugin manager for Neovim                                                                                                  |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)                                        | Lua functions                                                                                                                                     |
| [nui.nvim](https://github.com/MunifTanjim/nui.nvim)                                             | UI Component Library for Neovim                                                                                                                   |
| [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)                            | Lua fork of vim-web-devicons for neovim                                                                                                           |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs)                                      | Autopairs for neovim written by lua                                                                                                               |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim)                                        | Smart and powerful comment plugin for neovim                                                                                                      |
| [hop.nvim](https://github.com/phaazon/hop.nvim)                                                 | Neovim motions on speed                                                                                                                           |
| [nvim-surround](https://github.com/kylechui/nvim-surround)                                      | Add/change/delete surrounding delimiter pairs with ease                                                                                           |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)                 | Indent guides for Neovim                                                                                                                          |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)                                 | Neovim plugin to manage the file system and other tree like structures                                                                            |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)                               | Highlight, list and search todo comments in your projects                                                                                         |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)                           | Nvim Treesitter configurations and abstraction layer                                                                                              |
| [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)   | Syntax aware text-objects, select, move, swap, and peek support                                                                                   |
| [nvim-treesitter-refactor](https://github.com/nvim-treesitter/nvim-treesitter-refactor)         | Refactor module for nvim-treesitter                                                                                                               |
| [playground](https://github.com/nvim-treesitter/playground)                                     | Treesitter playground integrated into Neovim                                                                                                      |
| [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)                                    | Use treesitter to auto close and auto rename html tag                                                                                             |
| [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring) | Neovim treesitter plugin for setting the commentstring based on the cursor location in a file                                                     |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)                                      | Quickstart configs for Nvim LSP                                                                                                                   |
| [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)                                       | null-ls.nvim reloaded / Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.                                |
| [mason.nvim](https://github.com/williamboman/mason.nvim)                                        | Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)                    | Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim                                                                     |
| [mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)                            | mason-null-ls bridges mason.nvim with the null-ls plugin - making it easier to use both plugins together                                          |
| [noice.nvim](https://github.com/folke/noice.nvim)                                               | Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu                                                |
| [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)                                     | Fancy Fastest Async Start Screen Plugin of Neovim                                                                                                 |
| [lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)                               | LSP signature hint as you type                                                                                                                    |
| [nvim-navic](https://github.com/SmiteshP/nvim-navic)                                            | Simple winbar/statusline plugin that shows your current code context                                                                              |
| [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)                                         | A light-weight lsp plugin based on neovim's built-in lsp with a highly performant UI                                                              |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                                                 | A completion plugin for neovim coded in Lua                                                                                                       |
| [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)                                         | nvim-cmp source for neovim builtin LSP client                                                                                                     |
| [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)                                             | nvim-cmp source for buffer words                                                                                                                  |
| [cmp-path](https://github.com/hrsh7th/cmp-path)                                                 | nvim-cmp source for path                                                                                                                          |
| [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)                                      | luasnip completion source for nvim-cmp                                                                                                            |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip)                                                  | Snippet Engine for Neovim written in Lua                                                                                                          |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)                            | Set of preconfigured snippets for different languages                                                                                             |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)                              | Highly extendable fuzzy finder over lists                                                                                                         |
| [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)        | FZF sorter for telescope written in C                                                                                                             |
| [telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)    | File Browser extension for telescope.nvim                                                                                                         |
| [telescope-media-files.nvim](https://github.com/nvim-telescope/telescope-media-files.nvim)      | Preview images, pdf, epub, video, and fonts from Neovim using Telescope.                                                                          |
| [nvim-colorizer.lua](https://github.com/NvChad/nvim-colorizer.lua)                              | A high-performance color highlighter for Neovim which has no external dependencies! Written in performant Luajit                                  |
| [glow.nvim](https://github.com/ellisonleao/glow.nvim)                                           | A markdown preview directly in your neovim                                                                                                        |
| [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)                        | Preview markdown on your modern browser with synchronised scrolling                                                                               |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)                                    | A blazing fast and easy to configure neovim statusline plugin written in pure lua                                                                 |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)                                   | A snazzy bufferline for Neovim                                                                                                                    |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                                     | Git integration for buffers                                                                                                                       |
| [vim-fugitive](https://github.com/tpope/vim-fugitive)                                           | Fugitive is the premier Vim plugin for Git                                                                                                        |
| [typescript-tools.nvim](https://github.com/pmizio/typescript-tools.nvim)                        | TypeScript integration NeoVim deserves                                                                                                            |
| [rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim)                                  | Tools for better development in rust using neovim's builtin lsp                                                                                   |
| [crates.nvim](https://github.com/Saecki/crates.nvim)                                            | A neovim plugin that helps managing crates.io dependencies                                                                                        |
| [neodev.nvim](https://github.com/folke/neodev.nvim)                                             | Neovim setup for init.lua and plugin development with full signature help, docs and completion for the nvim lua API.                              |
| [presence.nvim](https://github.com/andweeb/presence.nvim)                                       | Discord Rich Presence for Neovim                                                                                                                  |

## Language servers

- [tsserver](https://github.com/typescript-language-server/typescript-language-server)
- [rust_analyzer](https://github.com/rust-analyzer/rust-analyzer)
- [pyright](https://github.com/microsoft/pyright)
- [sumneko_lua](https://github.com/sumneko/lua-language-server)
- [gopls](https://github.com/golang/tools/tree/master/gopls)
- [html](https://github.com/hrsh7th/vscode-langservers-extracted)
- [cssls](https://github.com/hrsh7th/vscode-langservers-extracted)
- [jsonls](https://github.com/hrsh7th/vscode-langservers-extracted)
- [emmet_ls](https://github.com/aca/emmet-ls)
- [vuels](https://github.com/vuejs/vetur/tree/master/server)
- [bashls](https://github.com/bash-lsp/bash-language-server)

## [Full LSP servers list](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)
