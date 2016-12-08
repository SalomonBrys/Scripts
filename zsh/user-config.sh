# Additional Conf
TMOUT=0				# No screen timeout
unsetopt autoremoveslash	# Do not remove slash at the end of a directory
setopt autopushd		# Make cd push the old directory onto the directory stack, can back the history of dir with popd
setopt globdots			# Pattern matching includes dot files when starting with a *
setopt histignoredups		# Do not save the current line in the history if the previous is the same
setopt histignorespace		# Do not save a line in the history if it begins with a space
setopt noclobber		# Prevent from overwriting an existing file by a > redirection, use >! to force

# Stop expanding everything on tab
bindkey "^I" complete-word

# Environment
export SHELL="/bin/zsh"
export EDITOR="emacs"
export BROWSER="google-chrome"
export LESS="-R"

# Java home
if hash java_home 2> /dev/null; then
    export JAVA_HOME=$(java_home)
fi

alias emacs="emacs -nw"
alias termreset='echo -e "\xF"'

