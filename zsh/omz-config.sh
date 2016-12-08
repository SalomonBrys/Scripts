export ZSH=$CODE/oh-my-zsh
ZSH_THEME="mortalscumbag"

# Case-sensitive completion.
#CASE_SENSITIVE="true"

# How often to auto-update (in days).
export UPDATE_ZSH_DAYS=2

# Command auto-correction.
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files under VCS as dirty. This makes repository status check for large repositories much, much faster.
#DISABLE_UNTRACKED_FILES_DIRTY="true"

# Change the command execution time stamp shown in the history command output.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$CODE/Scripts/zsh-custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(colored-man-pages colorize command-not-found compleat cp extract git gradle)
