#!/bin/sh
WORKSPACE_DIR=~/dev/workspace

cd ~
sudo amazon-linux-extras install epel -y
sudo yum install -y ansible
mkdir -p $WORKSPACE_DIR
cd $WORKSPACE_DIR
git clone https://github.com/nikuyoshi/dev-pc-provisioning.git
ansible-playbook dev-pc-provisioning/cloudshell.yml
fish