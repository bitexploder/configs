HISTFILE="/home/HOMEDIR/.zsh_history"
HISTSIZE=100000000
SAVEHIST=100000000
bindkey ^R fzf-history-widget

# LS coloring
LS_COLORS='ow=01;36;40:no=00;37:fi=00:di=00;33:ln=04;36:pi=40;33:so=01;35:bd=40;33;01:'
export LS_COLORS
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Fancy coloring
#setopt COMPLETE_IN_WORD
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':autocomplete:*' default-context history-incremental-search-backward
zstyle ':completion:*' menu select


#PATH=$PATH:/extra/bin
alias timer="for i in {1..25}; do sleep 60; echo \"Tick ${i}\"; done; zenity --warning --text=\"Timer up\"; echo `date +%y_%m_%d\ %H:%M` >> ~/Desktop/timer.log"
alias breakt="sleep 300 && zenity --warning --text=\"Break over\""
alias ls="ls --color"

dotimer() {
	echo "Starting $1 minute timer";
	for i in {1..$1}; do; 
		sleep 60; 
		echo "Tick ${i}";
	done;
	paplay ~/Desktop/radiate.wav;
	zenity --warning --text="Timer done";
	echo "`date +%y_%m_%d\ %H:%M`" >> ~/Desktop/timer.log;
}
slice () {
        ffmpeg -ss $1 -t $2 -i $3 $3.mp4
}

muf() {
	mu find --sortfield="d" --fields "l,d,f,s" $@
}
muv() {
	mu view $@
}

open() {
	xdg-open $@
}

#eval "$(direnv hook zsh)"

socatsenddir() {
	tar -zc $1 | pv | socat -u STDIN TCP:$2:9876
}
socatwaitdir() {
	socat -u TCP4-LISTEN:9876,reuseaddr,bind=$1 OPEN:$2.tar.gz,creat
}

shortcuts() {
	echo "https://wezfurlong.org/wezterm/config/default-keys.html"
}

# fzf
source <(fzf --zsh)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fnm
FNM_PATH="/home/jeremy/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/jeremy/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

eval "$(starship init zsh)"
