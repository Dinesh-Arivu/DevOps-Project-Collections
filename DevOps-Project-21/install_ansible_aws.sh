#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "🔄 Updating package list..."
sudo apt-get update -y

echo "📦 Installing required base packages..."
sudo apt-get install -y software-properties-common python3 python3-pip

echo "➕ Adding Ansible PPA..."
sudo add-apt-repository --yes --update ppa:ansible/ansible

echo "🛠️ Installing Ansible..."
sudo apt-get install -y ansible ansible-core

echo "✅ Ansible version:"
ansible --version

echo "🐍 Installing AWS Python libraries (boto & boto3)..."
sudo pip3 install boto boto3

echo "📦 Installing python3-boto from apt (for system-wide compatibility)..."
sudo apt-get install -y python3-boto

echo "📋 Verifying boto installation..."
pip3 list | grep boto

echo "✅ Setup complete!"
