#
# ~/.profile
#

umask 022

# Prepend to $PATH if not already present
prepend () {
    case ":$PATH:" in
        *:"$1":*)
            ;;
        *)
            PATH="$1${PATH:+:$PATH}"
    esac
}
prepend "$HOME/bin"
unset prepend
export PATH

export GOPATH="$HOME/code/go"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export EDITOR="$(which vim)"
export VISUAL="$EDITOR"
export VIMINIT=":source $XDG_CONFIG_HOME/vim/vimrc"

export TERMINAL=gnome-terminal

export BROWSER=firefox

export LESSKEY="$XDG_CONFIG_HOME/less/lesskey"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"

#export XAUTHORITY="$XDG_RUNTIME_DIR/gdm/Xauthority"
#export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
#export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"

