require("toggleterm").setup{
    size = 10,
    open_mapping = [[<c-\>]],
    shade_terminals = true,
    direction = 'horizontal',
    close_on_exit = true,
    hide_numbers = true,
    shade_filetypes = {},
    persist_size = true,
    shell = vim.o.shell, -- change the default shell
}
