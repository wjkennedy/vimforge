# A9 Forge Dev v1 – Vim + Tmux + Forge CLI + Rovo Dev
![](https://a9group.net/a9logo.png)

## Features
- Vim plugin for Forge CLI
- **New:** Vim plugin for Rovodev ACLI
- Tmux scripts to launch dev sessions for Forge or Rovodev
- Example .vimrc (`example.vimrc`)

## How to Use

1. Extract ZIP
2. Move `plugin/vim-forge.vim` to `~/.vim/pack/plugins/start/vim-forge/plugin/`
3. *(Optional)* Move `plugin/vim-rovodev.vim` to `~/.vim/pack/plugins/start/vim-rovodev/plugin/`
4. Update `scripts/forge-dev.sh` or `scripts/rovodev-dev.sh` with your app paths
   (`APP_DIR` and optional `STATIC_DIR` variables)
5. Run the script you need: `./scripts/forge-dev.sh` or `./scripts/rovodev-dev.sh`
6. Start coding!
7. See `example.vimrc` for a minimal Vim configuration that loads the plugins and sets up the leader mappings.

### Rovodev ACLI Plugin

After installing `vim-rovodev.vim`, use commands like `:RovoDeploy` and `:RovoTunnel`
which simply call `acli rovodev deploy` and `acli rovodev tunnel`.  Mappings under
`<leader>r` mirror the Forge mappings.

You can also start a full tmux workflow using `scripts/rovodev-dev.sh`.

---
Built by A9 GoBot 2.6 

