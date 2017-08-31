#!/usr/bin/env bash
# Basic web server setup
# curl https://raw.githubusercontent.com/myacorn/bash/master/seed.sh | bash -s proj_name

# Check whether customisatations already exist in ~/.bashrc
if grep -q "local customisations" ~/.bashrc; then
  echo "Customisation already exist, aborting."
else
  # Add customisations
  echo >> ~/.bashrc
  echo '## local customisations' >> ~/.bashrc
  echo 'export PS1="('"$1"')${debian_chroot:+($debian_chroot)}\u@\h:\w\$ "' >> ~/.bashrc
  echo 'alias proj="cd /media/sf_data/work/projects/"' >> ~/.bashrc
  echo 'alias ..="cd .." ...="cd ../.." ....="cd ../../.." .....="cd ../../../.."' >> ~/.bashrc
  sesh() { ssh 192.168.1.$1; }
fi
