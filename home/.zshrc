export ZSH="/home/pabloaguilar/.oh-my-zsh"
export LANG=en_US.UTF-8
export GTK_IM_MODULE=cedilla

if [ -e ~/.zshrc.env ] ; then
   source ~/.zshrc.env
fi

ZSH_THEME="kardan"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='vim'
fi

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  docker
  python
  vi-mode
  chucknorris
)

source $ZSH/oh-my-zsh.sh
