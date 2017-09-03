#!/usr/bin/env bash
# Basic server setup, requires `server_name` as an argument
#
# Example:
#     curl https://raw.githubusercontent.com/myacorn/bash/master/seed.sh | bash -s server_name

# Check whether customisatations already exist in ~/.bashrc
if grep -q "local customisations" ~/.bashrc; then
  echo "Customisation already exist, aborting."
else
  # Add customisations
  echo >> ~/.bashrc
  echo '## local customisations' >> ~/.bashrc
  echo 'export PS1="['"$1"']${debian_chroot:+($debian_chroot)}\u@\h:\w\$ "' >> ~/.bashrc
  echo 'alias ..="cd .." ...="cd ../.." ....="cd ../../.." .....="cd ../../../.."' >> ~/.bashrc
  
  # sesh is a shortcut to ssh to a machine on our local network by supplying just the final part of the IPv4 address
  sesh() { ssh 192.168.1.$1 $2 $3 $4 $5; }
fi
