# if [ "$TERM" == "dumb" ]]
# then
#     unsetopt zle
#     unsetopt prompt_cr
#     unsetopt prompt_subst
#     unfunction precmd
#     unfunction preexec
#     PS1='$ '
# fi
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.  #ZSH_THEME="robbyrussell" 
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/SALOME
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/josh.batterson@gtlcompany.com/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall
#[ -e "${HOME}/.zsh_aliases" ] && source "${HOME}/.zsh_aliases"
#[ -e "${HOME}/.zshrc_local" ] && source "${HOME}/.zshrc_local"

# Alieses
alias ls='ls --color=auto'


#alias pacman='pacman --color=auto'
alias la='ls -a'
alias vi='vim'
alias top='htop'
alias CWESolver="time $HOME/Programming/Projects/CWE/CWESolver"
alias LNSSolver="time $HOME/Programming/Projects/LNS/Transient/LNSSolver"
alias Convert2VTK="$HOME/Programming/Projects/Convert2VTK/Convert2VTK"
alias GridProcessing="$HOME/Programming/Projects/GridProcessing/GridProcessing"
alias solome="$HOME/SALOME/salome &"
# alias mountRepo='sudo mount //192.168.0.129/Repository /mnt/Repo -o "username=josh.batterson";sudo mount //192.168.0.129/CFD\ Repository/ /mnt/CFDRepo -o "username=josh.batterson"'
# Tmux doesn't like to recognize 256 colouring, so let's force it
alias tmux='tmux -2'
alias emacsclient="emacsclient -t"
alias emacs="emacs -nw"
#
#alias salome="/opt/SALOME-7.8.0-OPENSOURCE-UB16.04/./salome &" alias paraview="/opt/ParaView-5.2.0-RC2-Qt4-OpenGL2-MPI-Linux-64bit/bin/paraview &"
#alias GridInterpolation="time /media/SecondaryDrive/Programming/Projects/GridInterpolation/GridInterpolation"
#alias GridProcessing="time /media/SecondaryDrive/Programming/Projects/GridProcessing/GridProcessing"
#alias Convert2VTK="time /media/SecondaryDrive/Programming/Projects/Convert2VTK/Convert2VTK"
#alias ConvertFormat="time /media/SecondaryDrive/Programming/Projects/GridProcessing/ConvertFormat"

########## GTL #############
# alias vnc='wakeonlan FC:AA:14:C9:B2:ED; xtightvncviewer 192.168.0.153'

# You have to use npm to install npm, and that will give you the
# # completion.sh file you need.
# source /usr/local/lib/node_modules/npm/lib/utils/completion.sh
#
#. $HOME/.antigen/powerline/powerline/bindings/zsh/powerline.zsh
 source "$HOME/.antigen/antigen.zsh"
#
antigen use oh-my-zsh
#
# # bundles from oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle screen
antigen bundle colored-man-pages

#antigen-theme awesomepanda
#antigen-theme jreese
antigen theme jdavis/zsh-files themes/jdavis
antigen-apply

# added by Anaconda2 2.4.1 installer
# export PATH="/home/josh.batterson@corp.gtlcompany.com/anaconda2/bin:$PATH"

# EDITOR="emacsclient -c"
# VISUAL="emacsclient -c"
EDITOR="vim"
VISUAL="vim"

export GTL_LIB_PATH="/home/jake.cranford@corp.gtlcompany.com/Programming/GTL_Libraries"
#alias salome = $HOME/SALOME/./salome

# # Emulate bash sources. Needed for GEANT4 and ROOT
# sh_source() {
#    emulate -L sh
#    source /opt/geant4/bin/geant4.sh
#    source /usr/local/bin/thisroot.sh
# }
# export LD_LIBRARY_PATH=/opt/geant4/lib/:$LD_LIBRARY_PATH
#
# source /opt/openfoam30/etc/bashrc
# . /opt/openfoam4/etc/bashrc
alias h5c++='/usr/bin/h5c++ -std=c++11'
