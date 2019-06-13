# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

## Users log ----------
LOGDIR=/var/unyou/net/secure
USER=`whoami`
NOW=`date +%Y%m%d%H%M%S`
LOGFILE=$LOGDIR/$USER/bash-$NOW
if [ ! -e $LOGDIR/$USER ]; then
  mkdir $LOGDIR/$USER
fi
if [ -e $LOGFILE ]; then
  mv -f $LOGFILE $LOGFILE.bak
fi
script -q $LOGFILE
exit
