# add cargo to path
set -gx PATH /home/allangalera/.cargo/bin $PATH

# set display variable to use on x-server
export DISPLAY=(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0

# initialize dbus
sudo /etc/init.d/dbus start &> /dev/null

function ll
    ls -lh $argv
end

# custom functions
# customize greeting message
function fish_greeting
  printf ""
end
# open gitkraken on a background job
function gk
  set dir $argv[1] (pwd) # use a directory if you pass it in, otherwise cwd
  nohup gitkraken -p $dir &>/dev/null &
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
