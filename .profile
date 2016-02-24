# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f ~/.bashrc ]; then
	. ~/.bashrc
    fi
fi

export JAVA_HOME=/usr/local/java/jdk1.8.0_40
export PATH=$JAVA_HOME/bin:/usr/lib/oracle/xe/app/oracle/product/10.2.0/client/bin:"${PATH}"
xhost +
#/usr/lib/oracle/xe/app/oracle/product/10.2.0/client/bin/oracle_env.sh
