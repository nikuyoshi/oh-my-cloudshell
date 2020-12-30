#!/bin/sh
WORKSPACE_DIR=${HOME}/dev/workspace

sudo amazon-linux-extras install epel -y
sudo yum install -y ansible
mkdir -p $WORKSPACE_DIR
git clone https://github.com/nikuyoshi/dev-pc-provisioning.git ${WORKSPACE_DIR}/dev-pc-provisioning
ansible-playbook dev-pc-provisioning/cloudshell.yml
fish