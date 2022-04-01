local GLOBAL = vim.g
local opt = vim.opt         		-- global/buffer/windows-scoped options

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = "," -- leader key

--> nvim tree mappings <--
map("n", "<leader>t", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>gt", ":NvimTreeFocus<CR>", opts)
--> telescope mappings <--
map("n", "<leader>f", ":Telescope find_files<cr>", opts)
map("n", "<leader>fg", ":Telescope live_grep<cr>", opts)
map("n", "<leader>fb", ":Telescope buffers<cr>", opts)
map('n', '<Leader>o', ':Telescope oldfiles<CR>', { noremap = true, silent = true })
--> barbar mappings <--
map("n", "<A-,>", ":BufferPrevious<CR>", opts)
map("n", "<A-.>", ":BufferNext<CR>", opts)
map("n", "<A-<>", ":BufferMovePrevious<CR>", opts)
map("n", "<A->>", ":BufferMoveNext<CR>", opts)
map("n", "<A-1>", ":BufferGoto 1<CR>", opts)
map("n", "<A-2>", ":BufferGoto 2<CR>", opts)
map("n", "<A-3>", ":BufferGoto 3<CR>", opts)
map("n", "<A-4>", ":BufferGoto 4<CR>", opts)
map("n", "<A-5>", ":BufferGoto 5<CR>", opts)
map("n", "<A-6>", ":BufferGoto 6<CR>", opts)
map("n", "<A-7>", ":BufferGoto 7<CR>", opts)
map("n", "<A-8>", ":BufferGoto 8<CR>", opts)
map("n", "<A-9>", ":BufferGoto 9<CR>", opts)
map("n", "<A-0>", ":BufferLast<CR>", opts)
map("n", "<A-c>", ":BufferClose<CR>", opts)
map("n", "<C-p>", ":BufferPick<CR>", opts)
map("n", "<leader>bb", ":BufferOrderByBufferNumber<CR>", opts)
map("n", "<leader>bd", ":BufferOrderByDirectory<CR>", opts)
map("n", "<leader>bl", ":BufferOrderByLanguage<CR>", opts)
--> nabla
map("n", "<C-r>", ':lua require("nabla").action()<CR>', opts)
map("n", "<C-p>", ':lua require("nabla").popup()<CR>', opts)

--> diagnostics
map('n', '<Leader>g', ':ToggleDiag<CR>', { noremap = true, silent = true })
map("n", "<leader>du", "<Plug>(toggle-lsp-diag-underline)", {silent = true })
map("n", "<leader>ds", "<Plug>(toggle-lsp-diag-signs)", {silent = true })
map("n", "<leader>dv", "<Plug>(toggle-lsp-diag-vtext)", {silent = true })
map("n", "<leader>di", "<Plug>(toggle-lsp-diag-update_in_insert)", {silent = true })


--                                   basic settings
map('n', '<TAB>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })

map('n', '<TAB>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })


-- Shorten function name
local keymap = vim.api.nvim_set_keymap
keymap("i", "jj", "<ESC>", opts)

-- Quick save and exit neovim
keymap('n', '<Leader>w', ':write<CR>', {noremap = true})
keymap('n', '<Leader>e', ':quit!<CR>', {noremap = true})

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Autoformatting code
vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.py,*.cpp,*.c FormatWrite
augroup END
]], true)

opt.colorcolumn = '80'        -- line lenght marker at 80 columns

vim.o.completeopt = "menuone,noselect"

-- Markdown preview settings
keymap('n', '<Leader>m', ':MarkdownPreview<CR>', {noremap = true})

-- Move text up and down
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)


