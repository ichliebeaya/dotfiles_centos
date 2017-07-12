bindkey -v 

# 自動補完を有効にする
# # コマンドの引数やパス名を途中まで入力して <Tab> を押すといい感じに補完してくれる
# # 例： `cd path/to/<Tab>`, `ls -<Tab>`
autoload -U compinit; compinit

# 入力したコマンドが存在せず、かつディレクトリ名と一致するなら、ディレクトリに cd する
# # 例： /usr/bin と入力すると /usr/bin ディレクトリに移動
setopt auto_cd

#↑を設定すると、 .. とだけ入力したら1つ上のディレクトリに移動できるので……
# 2つ上、3つ上にも移動できるようにする
alias ...='cd ../..'
alias ....='cd ../../..'

#その他のalias設定
alias l='ls -ltra --color'
alias vi='vim'

# cd した先のディレクトリをディレクトリスタックに追加する
# ディレクトリスタックとは今までに行ったディレクトリの履歴のこと
# `cd +<Tab>` でディレクトリの履歴が表示され、そこに移動できる
setopt auto_pushd

# pushd したとき、ディレクトリがすでにスタックに含まれていればスタックに追加しない
setopt pushd_ignore_dups

#<Tab> でパス名の補完候補を表示したあと、
# 続けて <Tab> を押すと候補からパス名を選択できるようになる
# 候補を選ぶには <Tab> か Ctrl-N,B,F,P
zstyle ':completion:*:default' menu select=1

#prompt settings
PROMPT='[%F{magenta}%B%n%b%f@%F{blue}%U%m%u%f]# '
RPROMPT='[%F{green}%d%f]'

#zaw settings
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
zstyle ':chpwd:*' recent-dirs-max 5000
zstyle ':chpwd:*' recent-dirs-default yes
zstyle ':completion:*' recent-dirs-insert both
source /root/zaw/zaw.zsh
zstyle ':filter-select' case-insensitive yes # 絞り込みをcase-insensitiveに
bindkey '^@' zaw-cdr # zaw-cdrをbindkey

#history
# インクリメンタルからの検索
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

#change default editor
export EDITOR=vim

#unset nomatch
unsetopt nomatch

#add java path 
export JAVA_HOME=/usr/java/default
export CATALINA_HOME=/etc/tomcat

#add path
export PATH=$PATH:/usr/local/bin
