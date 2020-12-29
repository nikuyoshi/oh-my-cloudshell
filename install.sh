#!/bin/sh

sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum install -y ansible
git clone https://github.com/nikuyoshi/dev-pc-provisioning.git
ansible-playbook dev-pc-provisioning/cloudshell.yml