" Minimal .vimrc for vim-forge and vim-rovodev

" Set leader key used by plugin mappings
let mapleader = ","

" Load the plugins (assuming they are under ~/.vim/pack/plugins/start)
packadd vim-forge
packadd vim-rovodev

" Forge mappings (provided by plugin):
"   <leader>fd :ForgeDeploy
"   <leader>ft :ForgeTunnel
" Rovodev mappings:
"   <leader>rd :RovoDeploy
"   <leader>rt :RovoTunnel

