# Nvim configuration

## Requirements
- [curl](https://github.com/curl/curl)
- [neovim](https://github.com/neovim/neovim) (>= 0.5)
- [vim-plug](https://github.com/junegunn/vim-plug)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

## Installation

#### Install neovim, tree-sitter, luajit, ripgrep

```bash
brew install --HEAD neovim tree-sitter luajit ripgrep
```

#### Install vim-plug

##### Vim
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
##### Neovim
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

#### Nvim configuration layout
```bash
├── README.md
├── after # Post init scripts
│   └── plugin # Plugin configs
│       ├── autopairs.lua
│       ├── completion.lua
│       ├── lsp-colors.vim
│       ├── lspconfig.lua
│       ├── lspsaga.vim
│       ├── lualine.lua
│       ├── telescope.vim
│       └── treesitter.lua
├── init.vim # Root config file
├── macos.vim # MacOS specific config
├── mappings.vim # Keymaps
└── plug.vim # Vim-plug config
```



## Main mappings

- `<Leader>` key set as `,`

- `<Escape>` from insert mode can be applied by `jj`

### Some basic mappings

| Keymap                                       | Description                                                  |
| -------------------------------------------- | ------------------------------------------------------------ |
| `<leader><space>`                            | Turn off search highlight                                    |
| `<leader>` `ff`                              | Lists files in your current working directory, respects .gitignore |
| `<leader>` `fg`                              | Search for a string in your current working directory and get results live as you type (respecting .gitignore) |
| `<C-n>`                                      | Next item in completion list                                 |
| `<C-p>`                                      | Previous item in completion list                             |
| `<leader>` `n`                               | NERDTreeFocus                                                |
| `<C-n>`                                      | NERDTree                                                     |
| `<C-t>`                                      | NERDTreeToggle                                               |
| `<C-f>`                                      | NERDTreeFind                                                 |
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
| [lsp-colors.nvim](https://github.com/folke/lsp-colors.nvim)  | Plugin that creates missing LSP diagnostics highlight groups for color schemes that don't yet support the Neovim 0.5 builtin LSP client |
| [lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim) | LSP signature hint as you type                               |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs)   | Autopairs for neovim written by lua                          |
| [vim-surround](https://github.com/tpope/vim-surround)        | Delete/change/add parentheses/quotes/XML-tags/much more with ease |
| [emmet-vim](https://github.com/mattn/emmet-vim)              | Vim plug-in which provides support for expanding abbreviations similar to [emmet](http://emmet.io/) |
| [vim-closetag](https://github.com/alvan/vim-closetag)        | Auto close (X)HTML tags                                      |
| [vim-go](https://github.com/fatih/vim-go)                    | Go development plugin for Vim                                |
| [rust.vim](https://github.com/rust-lang/rust.vim)            | Vim configuration for Rust                                   |
| [rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim) | Tools for better development in rust using neovim's builtin lsp |
| [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) | Markdown preview plugin for (neo)vim                         |



## Language servers

- [typescript-language-server](https://github.com/typescript-language-server/typescript-language-server)
- [pyright](https://github.com/microsoft/pyright)
- [gopls](https://github.com/golang/tools/tree/master/gopls)
- [rust-analyzer](https://github.com/rust-analyzer/rust-analyzer)

