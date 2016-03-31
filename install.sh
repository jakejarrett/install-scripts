#!/usr/bin/env bash
# This assumes we're using ubuntu.
#
# We install the dependencies individually so it's easier to know what broke!
#
# First, We check if git is installed! (Although, it might be kind of redundant considering this is in a git repo)
echo "sudo apt-get install git"
sudo apt-get install git

# Install zip
echo "sudo apt-get install zip"
sudo apt-get install zip

# Once git is installed, We'll install nvm
echo "wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash"
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

# Once that's done, lets make a non-root user
read -p "What did you want to name your new user?`echo $'\n> '`" NEWUSER
echo $NEWUSER

# login to that user
echo "su - $NEWUSER"
su - $NEWUSER

echo "You can now just login to $NEWUSER without using the root account unless needed."