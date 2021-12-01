Vim with some plugins, install plugins manually inside vim, run `:PlugInstall`
This configuration placed under `~/.config/vim` directory. Edit the environment variable to get the configuration right
```
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export GVIMINIT='let $MYGVIMRC="$XDG_CONFIG_HOME/vim/gvimrc" | source $MYGVIMRC'
```
to your local/system profile/environment variable
