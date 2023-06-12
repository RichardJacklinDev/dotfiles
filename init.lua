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

vim.cmd[[ filetype plugin indent on ]]
vim.cmd[[ syntax enable ]]
vim.cmd[[ let g:vimtex_view_general_viewer = 'zathura' ]]
-- vim.cmd[[ let g:vimtex_view_zathura_options = '-reuse-instance' ]]
vim.cmd[[ let g:vimtex_compiler_method = 'latexmk' ]]
vim.cmd[[ let g:tex_flavor = 'latex' ]]

-- vim.cmd[[
-- 		function! s:TexFocusVim() abort
-- 			silent execute "!open -a iTerm"
-- 			redraw!
-- 		endfunction
-- ]]
--
-- vim.cmd[[
-- 		augroup vimtex_event_focus
-- 			au!
-- 			au User VimtexEventViewReverse call s:TexFocusVim()
-- 		augroup END
-- ]]
