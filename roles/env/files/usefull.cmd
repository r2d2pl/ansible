history | awk 'BEGIN {FS="[ \t]+|\\|"} {print $3}' | sort | uniq 	:most used commands
!! 	:(rerun last command)
!* 	:(reuse arguments from previous command)
!$ 	:(use last argument of last command)
shopt -s histappend 	:(allow multiple terminals to write to the history file)
cd - 	:previous directory
cp name{,.old}		:copy with copy :)
for x in `seq 1 5`; do filename_${x}.txt; done

command -V <some command binary>	:(tells you whether <some binary> is a built-in, binary or alias)

echo > /dev/<udp or tcp>/<server ip>/<port>	:if open tehere is no output
echo > /dev/tcp/192.168.99.99/22

&& 	:(run second command if the first is successful)
; 	:(run second command regardless of success of first one)
2>&1 	:(redirect stdout and stderr to a file)

nohup myprogram.sh &

-----------------------------------------> BASH ++ :):
CTRL+z
CTRL+s, exit CTRL+ q			#XOFF - pause sending data

KEYWORDS:
    ctrl + _ (undo)
    ctrl + t (swap two characters)
    ALT + t (swap two words)
    ALT + . (prints last argument from previous command)
    ctrl + x + * (expand glob/star)
    ctrl + arrow (move forward a word)
    ALT + f (move forward a word)
    ALT + b (move backward a word)
    ctrl + x + ctrl + e (opens the command string in an editor so that you can edit it before execution)
    ctrl + e (move cursor to end)
    ctrl + a (move cursor to start)
    ctrl + xx (move to the opposite end of the line)
    ctrl + u (cuts everything before the cursor)
    ctrl + k (cuts everything after the cursor)
    ctrl + y (pastes from the buffer)
    ctrl + l (clears screen)s
-----------------------------------------> COLORS:
# enable colors
eval "`dircolors -b`"

# force ls to always use color and type indicators
alias ls='ls -hF --color=auto'

# make the dir command work kinda like in windows (long format)
alias dir='ls --color=auto --format=long'

# make grep highlight results using color
export GREP_OPTIONS='--color=auto'

# Add some colour to LESS/MAN pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;33m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m' 
export LESS_TERMCAP_so=$'\E[01;42;30m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
-----------------------------------------> TMUX:
set prefix C-a 
set -g mouse on
set synchronize-panes

For your .tmux.conf:
# You probably already put this in
set prefix C-a
unbind-key C-b
bind-key C-a send-prefix
-----------------------------------------> VIM:
To set the number of spaces to display for a tab:
set tabstop=2
set number
set showmatch
To highlight the searched term in a file:
set hlsearch
To search without considering ignorecase when both ignorecase and smartcase are set and the search pattern contains uppercase:
set smartcase
To display a permanent status bar at the bottom of the vim screen showing the filename, row number, column number, etc.:
set laststatus=2
colorsheme
	cat ~/.vimrc
colorscheme koehler
set tabstop=2
set number
set showmatch
set hlsearch
set smartcase
set laststatus=2
----------------------------------------->


