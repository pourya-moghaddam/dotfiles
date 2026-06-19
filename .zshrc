# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
bindkey '\e[H' beginning-of-line
bindkey '\e[F' end-of-line
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kiwi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
alias rs-on='redshift -P -O 3600'
alias rs-off='redshift -x'
alias daddy='sudo'
alias rm='rm -i'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

PS1=" %1~ > "

export JAVA_HOME=/usr/lib/jvm/java-25-openjdk
export PATH=$JAVA_HOME/bin:$PATH
export DB_USERNAME="postgres"
export DB_PASSWORD="piCwk|7{@W(:?jyy"
export PATH="$PATH:/home/kiwi/.local/bin"

#system proxy on/off controlls
proxy() {
    case "$1" in
        on)
            export http_proxy="http://192.168.1.100:8082"
            export https_proxy="http://192.168.1.100:8082"
            export socks_proxy="socks5://127.0.0.1:10808"
            export ftp_proxy="http://127.0.0.1:10808"
            export all_proxy="http://192.168.1.100:8082"
            echo "Proxy enabled."
            ;;
        off)
            unset http_proxy
            unset https_proxy
            unset socks_proxy
            unset ftp_proxy
            unset all_proxy
            echo "Proxy disabled."
            ;;
        *)
            echo "Usage: proxy {on|off}"
            ;;
    esac
}

# run a command silently in background
silent() {
    if [[ -z "$1" ]]; then
        echo "Usage: run_silent <command> [args...]"
        return 1
    fi
    # Start the command in background, redirect stdout and stderr to /dev/null
    "$@" > /dev/null 2>&1 &
    disown
}

neofetch
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi



# Added by Antigravity CLI installer
export PATH="/home/kiwi/.local/bin:$PATH"
