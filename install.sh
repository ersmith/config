#!/bin/bash

# Determines the directory this script is in and removes it
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

# Copies the config files which can be overwritten
cp ./.vimrc ~/
cp ./.tmux.conf ~/

# Makes sure the bashrc and profile files exist
touch ~/.profile
touch ~/.bashrc

# Appends the config files which shouldn't be overwritten
cat ./.bashrc >> ~/.bashrc
cat ./.bash_profile >> ~/.bash_profile

# Performs all the cleanup and removes the directory
rm -rf "$DIR"
