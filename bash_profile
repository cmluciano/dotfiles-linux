# Add `~/bin` to the `$PATH`
export PATH="~bin:$PATH"
export PATH="/usr/bin/"
# Path for chruby
export PATH="/usr/local/opt/chruby/"

# ChefDK gems
export PATH="~/.chefdk/gem/ruby/2.1.0/bin"

#Git autocompletion
source ~/git-completion.bash
#Docker vars
export DOCKER_HOST=tcp://:2375

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
        shopt -s "$option" 2> /dev/null
done

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion
export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:$GOPATH/bin

#Set VIM as default text editor
export EDITOR='vim'
#Add chruby 
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

#We haz a history
export HISTTIMEFORMAT="%d/%m/%y %T "
export HISTSIZE=10000
