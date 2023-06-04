-- Try to load "env" file
local ok, env = pcall(require, 'user.env')

if not ok then
  local msg = 'lua/user/env.lua not found. You should probably rename env.sample'
  vim.notify(msg, vim.log.levels.ERROR)
  return
end

require('user.settings')
require('user.lazy')
require('user.options')
require('user.keymaps')

-- Transparent nvim
-- vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, { "Pmenu", "Float", "NormalFloat" })
