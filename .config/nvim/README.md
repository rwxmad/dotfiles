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
- [neovim](https://github.com/neovim/neovim) (>= 0.5)
- [packer.nvim](https://github.com/wbthomason/packer.nvim#specifying-plugins)
- [npm](https://github.com/npm/cli)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

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
├── after # ========================> Post init scripts
│   └── ftplugin # =================> File type based configs
│       └── toml.lua
├── init.lua # =====================> Root config file
├── lua # ==========================> Lua configs directory
│   ├── config # ===================> Plugin configs
│   │   ├── closetag.lua
│   │   ├── completion.lua
│   │   ├── gitsigns.lua
│   │   ├── lsp_signature.lua
│   │   ├── lspconfig.lua
│   │   ├── lspsaga.lua
│   │   ├── lualine.lua
│   │   ├── nvim-tree.lua
│   │   └── treesitter.lua
│   └── core # =====================> Core configs
│       ├── macos.vim # ============> MacOS specific config
│       ├── mappings.lua # =========> Keymaps
│       ├── plug.lua # =============> Packer config
│       └── settings.lua # =========> General settings
└── snippets # =====================> Snippets directory
    └── javascript.json
```



## Main mappings

- `<Leader>` key set as `,`
- `<Escape>` from insert mode can be applied by `jj`
- `<leader>` `w` - Write file
- `<leader>` `q` - Quit

### Some basic mappings

| Keymap                                       | Description                                                  |
| -------------------------------------------- | ------------------------------------------------------------ |
| `<leader><space>`                            | Turn off search highlight                                    |
| `<leader>` `ff`                              | Lists files in your current working directory, respects .gitignore |
| `<leader>` `fg`                              | Search for a string in your current working directory and get results live as you type (respecting .gitignore) |
| `<leader>` `fd`                              | Telescope file browser, `file.ext` + `<C-e>` to create file in current directory, `directory/` + `<C-e>` to create directory in current directory |
| `<C-n>`                                      | Next item in completion list                                 |
| `<C-p>`                                      | Previous item in completion list                             |
| `<C-n>`                                      | NvimTreeToggle                                               |
| `<leader>` `r`                               | NvimTreeRefresh                                              |
| `<leader>` `n`                               | NvimTreeFindFile                                             |
| `<A-d>`                                      | Toggle terminal                                              |
| `<leader>` `<leader>` `s` + symbol to search | Highlighting all possible choices and allowing you to press one key to jump directly to the target |
| `gcc`                                        | Comment out a line                                           |
| `gc`                                         | Comment out the target of a motion                           |
| `gcap`                                       | Comment out a paragraph                                      |



## Plugins

| Plugin                                                       | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) | A file explorer tree for neovim written in lua               |
| [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) | Lua fork of vim-web-devicons for neovim                      |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)   | Quickstart configurations for the Nvim LSP client            |
| [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)      | A light-weight lsp plugin based on neovim built-in lsp with highly a performant UI |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Nvim Treesitter configurations and abstraction layer         |
| [nvim-treesitter-refactor](https://github.com/nvim-treesitter/nvim-treesitter-refactor) | Refactor module for nvim-treesitter                          |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)              | A completion plugin for neovim coded in Lua                  |
| [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)      | nvim-cmp source for neovim builtin LSP client                |
| [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)          | nvim-cmp source for buffer words                             |
| [cmp-path](https://github.com/hrsh7th/cmp-path)              | nvim-cmp source for path                                     |
| [vim-fugitive](https://github.com/tpope/vim-fugitive)        | Vim plugin for Git                                           |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)  | Git signs written in pure lua                                |
| [vim-commentary](https://github.com/tpope/vim-commentary)    | Comment stuff out                                            |
| [vim-easymotion](https://github.com/easymotion/vim-easymotion) | Vim motion on speed                                          |
| [lualine.nvim](https://github.com/hoob3rt/lualine.nvim)      | A blazing fast and easy to configure neovim statusline plugin written in pure lua |
| [cmp-vsnip](https://github.com/hrsh7th/cmp-vsnip)            | nvim-cmp source for vim-vsnip                                |
| [vim-vsnip](https://github.com/hrsh7th/vim-vsnip)            | Snippet plugin for vim/nvim that supports LSP/VSCode's snippet format |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)     | Lua functions                                                |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Highly extendable fuzzy finder over lists                    |
| [packer.nvim](https://github.com/wbthomason/packer.nvim)     | A use-package inspired plugin manager for Neovim             |
| [lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim) | LSP signature hint as you type                               |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs)   | Autopairs for neovim written by lua                          |
| [vim-surround](https://github.com/tpope/vim-surround)        | Delete/change/add parentheses/quotes/XML-tags/much more with ease |
| [emmet-vim](https://github.com/mattn/emmet-vim)              | Vim plug-in which provides support for expanding abbreviations similar to [emmet](http://emmet.io/) |
| [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) | Use treesitter to auto close and auto rename html tag        |
| [vim-go](https://github.com/fatih/vim-go)                    | Go development plugin for Vim                                |
| [rust.vim](https://github.com/rust-lang/rust.vim)            | Vim configuration for Rust                                   |
| [rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim) | Tools for better development in rust using neovim's builtin lsp |
| [nvim-lsp-ts-utils](https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils) | Utilities to improve the TypeScript development experience for Neovim's built-in LSP client |
| [crates.nvim](https://github.com/Saecki/crates.nvim)         | A neovim plugin that helps managing crates.io dependencies   |
| [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) | Markdown preview plugin for (neo)vim                         |
| [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) | A high-performance color highlighter for Neovim which has **no external dependencies**! Written in performant Luajit |



## Language servers

- [typescript-language-server](https://github.com/typescript-language-server/typescript-language-server)
- [pyright](https://github.com/microsoft/pyright)
- [gopls](https://github.com/golang/tools/tree/master/gopls)
- [rust-analyzer](https://github.com/rust-analyzer/rust-analyzer)
- [tailwind](https://github.com/tailwindlabs/tailwindcss-intellisense)
- [cssls](https://github.com/hrsh7th/vscode-langservers-extracted)
- [stylelint-lsp](https://github.com/bmatcuk/stylelint-lsp)
- [vetur](https://github.com/vuejs/vetur/tree/master/server)
- [html](https://github.com/hrsh7th/vscode-langservers-extracted)
- [bash-language-server](https://github.com/bash-lsp/bash-language-server)
- [diagnosticls](https://github.com/iamcco/diagnostic-languageserver)

## [Full LSP servers list](https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md)

