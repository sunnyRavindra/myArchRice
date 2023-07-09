if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export PATH="$HOME/.config/emacs/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions)

# Custome Commands
lss() {
   ~/code/Cloud-DevOps-Large-Enterprise-Practical-Guide/organizer/readme.sh > /dev/null 2>&1

   ~/code/myArchRice/scripts/auto-commit.sh > /dev/null 2>&1

   echo "git Commit Done"

   ~/code/Docker/Docker-Commands.sh
}


source $ZSH/oh-my-zsh.sh
