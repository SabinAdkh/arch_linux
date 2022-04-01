require("packer-config")
require("options")
require("keymap-config")
require("autopairs-config")
require("lualine-config")
require("barbar-config")
require("nvim-tree-config")
require("toggleterm-config")
require("comment-nvim-config")

-- tree-sitter and tree-sitter plugins
require("treesitter-config")
--> lsp modules
require("lsp-config.language-servers")
require("lsp-config.lspsaga")
require("lsp-config.cmp")
require("lsp-config.null-ls")

-- Startup
require ("lsp-diagnostics")
-- Codeformatting
require ("formatter-config.formatter")

