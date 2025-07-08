# A9 Forge Dev v0 – Vim + Tmux + Forge CLI
![](https://a9group.net/a9logo.png)

## 🛠 Features
- Vim plugin for Forge CLI
- **New:** Vim plugin for Rovodev ACLI
- Tmux script to launch a dev session with tunnel/build/Vim panes
- Example .vimrc

## 📦 How to Use

1. Extract ZIP
2. Move `plugin/vim-forge.vim` to `~/.vim/pack/plugins/start/vim-forge/plugin/`
3. *(Optional)* Move `plugin/vim-rovodev.vim` to `~/.vim/pack/plugins/start/vim-rovodev/plugin/`
4. Update `scripts/forge-dev.sh` with your Forge app path
5. Run the script: `./scripts/forge-dev.sh`
6. Start coding!

### Rovodev ACLI Plugin

After installing `vim-rovodev.vim`, use commands like `:RovoDeploy` and `:RovoTunnel`
which simply call `acli rovodev deploy` and `acli rovodev tunnel`.  Mappings under
`<leader>r` mirror the Forge mappings.

---
Built by A9 GoBot 2.6 

