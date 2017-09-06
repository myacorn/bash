#!/usr/bin/env bash
# Basic server setup, requires `server_name` as an argument to customize shell prompt
#
# Example:
#     curl https://raw.githubusercontent.com/myacorn/bash/master/seed.sh | bash -s server_name

# Check whether customizatations already exist in ~/.bashrc
if grep -q "local customizations" ~/.bashrc; then
  echo "Customization already exist, aborting."
else
  # Add customizations
  echo >> ~/.bashrc
  echo '## local customizations' >> ~/.bashrc
  echo 'export PS1="['"$1"']${debian_chroot:+($debian_chroot)}\u@\h:\w\$ "' >> ~/.bashrc
  echo 'alias ..="cd .." ...="cd ../.." ....="cd ../../.." .....="cd ../../../.."' >> ~/.bashrc
  echo 'alias duh="du -h --max-depth=1"' >> ~/.bashrc
fi
