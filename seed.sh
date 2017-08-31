#!/usr/bin/env bash
# Basic web server setup
# curl http://path/to/seed.sh | bash -s proj_name

# Check whether customisatations already exist in ~/.bashrc
if grep -q "local customisations" ~/.bashrc; then
  echo "Customisation already exist, aborting."
else
  # Add customisations
  echo '\n\n## local customisations' >> ~/.bashrc
  echo 'export PS1=($1)"${debian_chroot:+($debian_chroot)}\u@\h:\w\$ "' >> ~/.bashrc
  echo 'alias proj="cd /media/sf_data/work/projects/"' >> ~/.bashrc
  echo 'alias ..="cd .." ...="cd ../.." ....="cd ../../.." .....="cd ../../../.."' >> ~/.bashrc
fi
