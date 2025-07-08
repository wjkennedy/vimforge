" vim-forge.vim - Atlassian Forge plugin for Vim

if exists('g:loaded_forge_plugin')
  finish
endif
let g:loaded_forge_plugin = 1


if executable('forge')
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

  command! ForgeLogin :!forge login
  command! ForgeLogout :!forge logout
  command! ForgeWhoAmI :!forge whoami
  command! ForgeUpgrade :!npm install -g @forge/cli@latest
  command! ForgeLint :!forge lint
  " Secret Storage Commands
  command! -nargs=+ ForgeSetSecret :call system('forge tunnel & sleep 2 && node -e "require('@forge/api').storage.setSecret(\"'.<args>.'\")"')
  command! -nargs=1 ForgeGetSecret :echo system('node -e "require('@forge/api').storage.getSecret(\"'.<args>.'\").then(console.log)"')
  command! -nargs=1 ForgeDeleteSecret :call system('node -e "require('@forge/api').storage.deleteSecret(\"'.<args>.'\")"')
else
  echo "vim-forge: Forge CLI not found. Please install @forge/cli."
endif

au BufRead,BufNewFile manifest.yml set filetype=yaml

" Macro Config Dev Command Stub (placeholder for scaffolding helpers)command! ForgeMacroConfigHelp :echo "Use Label + Form components in UI Kit for macro config. See :help vim-forge"
