#!/bin/sh

echo -e "\n>>> test: Ansible test"
ansible --version
ansible-galaxy collection list community.docker | grep "1.9.1"
