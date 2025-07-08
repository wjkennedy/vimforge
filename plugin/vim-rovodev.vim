" vim-rovodev.vim - Rovodev ACLI plugin for Vim

if exists('g:loaded_rovodev_plugin')
  finish
endif
let g:loaded_rovodev_plugin = 1

command! RovoDeploy :!acli rovodev deploy
command! RovoTunnel :!acli rovodev tunnel
command! RovoInstall :!acli rovodev install
command! RovoLogs :!acli rovodev logs

nnoremap <leader>rd :RovoDeploy<CR>
nnoremap <leader>rt :RovoTunnel<CR>
nnoremap <leader>ri :RovoInstall<CR>
nnoremap <leader>rl :RovoLogs<CR>
