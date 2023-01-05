-- local null_ls_status_ok, null_ls = pcall(require, "null-ls")
-- if not null_ls_status_ok then
--   return
-- end
--
-- -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
-- local formatting = null_ls.builtins.formatting
-- -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
-- local diagnostics = null_ls.builtins.diagnostics
--
-- -- https://github.com/prettier-solidity/prettier-plugin-solidity
-- null_ls.setup {
--   debug = false,
--   sources = {
--     formatting.prettier.with {
--       extra_filetypes = { "toml" },
--       extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
--     },
--     formatting.black.with { extra_args = { "--fast" } },
--     formatting.stylua,
--
--     --cpp code formatting
--     formatting.clang_format.with {
--     disabled_filetypes = { "java" },
--     extra_args = { "-style=file" },
--   },
--
--     -- diagnostics.flake8,
--     formatting.isort,
--     -- formatting.lua_format,
--   },
-- }


local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- format html and markdown
  b.formatting.prettierd.with { filetypes = { "html", "yaml", "markdown" } },
  -- markdown diagnostic
  b.diagnostics.markdownlint,
  -- Lua formatting
  b.formatting.stylua,
  b.formatting.black.with { extra_args = { "--fast" } },
  b.formatting.clang_format,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
  if client.supports_method "textDocument/formatting" then
    vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
        vim.lsp.buf.formatting_sync()
        end,
    })
  end
end

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = on_attach,
}

