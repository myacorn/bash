#!/usr/bin/env bash
# Basic web server setup - currently intended for the primary login account on webserver -
#   not currently intended for setting up the project-specific account on the server
#   which will also source the virtualenv.
#
# FIXME: This should be deployed by ansible from a local copy, not curl from the web
#
# Example:
#     curl https://raw.githubusercontent.com/myacorn/bash/master/seed.sh | bash -s proj_name

# Check whether customisatations already exist in ~/.bashrc
if grep -q "local customisations" ~/.bashrc; then
  echo "Customisation already exist, aborting."
else
  # Add customisations
  echo >> ~/.bashrc
  echo '## local customisations' >> ~/.bashrc
  echo 'export PS1="['"$1"']${debian_chroot:+($debian_chroot)}\u@\h:\w\$ "' >> ~/.bashrc
  echo 'alias proj="cd /media/sf_data/work/projects/"' >> ~/.bashrc
  echo 'alias ..="cd .." ...="cd ../.." ....="cd ../../.." .....="cd ../../../.."' >> ~/.bashrc
  sesh() { ssh 192.168.1.$1 $2 $3 $4 $5; }
fi
