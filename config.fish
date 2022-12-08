# add cargo to path
set -gx PATH /home/allangalera/.cargo/bin $PATH

# add volta to path
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

function ll
    ls -lh $argv
end

# custom functions
# customize greeting message
function fish_greeting
  printf ""
end

# mkdir and cd into it
function mkcdir
    command mkdir -p $argv[1]
    cd $argv
end

# make sure agent is running
eval (ssh-agent -c) &> /dev/null
# add ssh keys to agent
ssh-add (find ~/.ssh -type f -name "*.pub" | sed -E 's/\.pub//') &> /dev/null

#aliases
alias ls='lsd'

# open terminal inside ubuntu home folder
cd ~

# initialize starship
starship init fish | source
