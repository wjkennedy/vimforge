" vim-forge.vim - Atlassian Forge plugin for Vim

if exists('g:loaded_forge_plugin')
  finish
endif
let g:loaded_forge_plugin = 1

command! ForgeCreate :!forge create
command! ForgeDeploy :!forge deploy
command! ForgeInstall :!forge install
command! ForgeTunnel :!forge tunnel
command! ForgeBuildStatic :!cd static/hello-world && npm install && npm run build
command! ForgeBuildReact :!cd src/frontend && npm install && npm run build
command! ForgeLogs :!forge logs --tail
command! ForgeRegister :!forge register

nnoremap <leader>fd :ForgeDeploy<CR>
nnoremap <leader>ft :ForgeTunnel<CR>
nnoremap <leader>fb :ForgeBuildStatic<CR>
nnoremap <leader>fi :ForgeInstall<CR>

au BufRead,BufNewFile manifest.yml set filetype=yaml