#!/usr/bin/env bash
# Basic web server setup
# curl http://path/to/seed.sh | bash -s proj_name

# Check whether customisatations already exist in ~/.bashrc

# Add customisations
echo 'export PS1=($1)"${debian_chroot:+($debian_chroot)}\u@\h:\w\$ "' >> ~/.bashrc
echo 'alias ..="cd .." ...="cd ../.." ....="cd ../../.." .....="cd ../../../.."' >> ~/.bashrc
