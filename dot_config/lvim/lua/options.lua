local options = {
  scrolloff = 999,           -- causes the cursor to stay in the middle line when possible
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  cmdheight = 2,             -- more space in the neovim command line for displaying messages
  pumheight = 10,            -- pop up menu height
  cursorline = true,         -- highlight the current line
  fixeol = true,             -- add a newline at end of file
  updatetime = 300,          -- faster completion (4000ms default)
  signcolumn = "yes",        -- always show the sign column, otherwise it would shift the text each time
  wrap = true,               -- lines longerwill wrap and	displaying continues on the next line
  expandtab = true,          -- convert tabs to spaces
  shiftwidth = 2,            -- the number of spaces inserted for each indentation
  tabstop = 2,               -- insert 2 spaces for a tab
  numberwidth = 2,           -- minimal number of columns to use for the line number
  title = false,             -- fix the error: insert mode current line has file path/name overlaid over text (https://github.com/LunarVim/LunarVim/issues/2986)
  list = true                -- useful to see the difference between tabs and spaces and for trailing blanks
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

-- Remove trailing white space
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
