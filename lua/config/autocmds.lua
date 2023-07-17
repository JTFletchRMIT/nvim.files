-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local api = require("nvim-tree.api")
api.events.subscribe(api.events.Event.FileCreated, function(file)
  vim.cmd("edit " .. file.fname)
end)

vim.api.nvim_create_augroup("mygroup", { clear = true })

vim.api.nvim_create_autocmd("Filetype", {
  pattern = { "*" },
  callback = function()
    vim.opt.formatoptions = vim.opt.formatoptions - "o" -- Don't continue comments with o and O
    vim.opt.formatoptions = vim.opt.formatoptions - "<cr>"
  end,
  group = "mygroup",
  desc = "Don't continue comments with o and O",
})
