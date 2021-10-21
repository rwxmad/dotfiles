-- -------------------------------------------------------------------------------------------------
-- General settings
-- -------------------------------------------------------------------------------------------------

require('core/settings')

-- -------------------------------------------------------------------------------------------------
-- Mappings
-- -------------------------------------------------------------------------------------------------

require('core/mappings')

-- -------------------------------------------------------------------------------------------------
-- Colors
-- -------------------------------------------------------------------------------------------------

require('core/colors')

-- -------------------------------------------------------------------------------------------------
-- Plugins
-- -------------------------------------------------------------------------------------------------

require('core/plug')

-- -------------------------------------------------------------------------------------------------
-- Plugin configs
-- -------------------------------------------------------------------------------------------------

require('config/lspconfig')
require('config/treesitter')
require('config/completion')
require('config/lualine')
require('config/lspsaga')
require('config/nvim-tree')
require('config/lsp_signature')
require('config/gitsigns')
require('config/closetag')
require('config/colorizer')

-- -------------------------------------------------------------------------------------------------
-- Misc
-- -------------------------------------------------------------------------------------------------

require('core/macos')
