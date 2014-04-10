#!/bin/bash

novm=false

while [ "$1" != "" ]; do
  case $1 in
    --novm )  novm=true
  esac
  shift
done

echo "[REDSTONE-ARSENAL] Installing Bower and Grunt CLI globally. We'll need a password for sudo..."
sudo npm install -g bower grunt-cli

echo "[REDSTONE-ARSENAL] Installing dev dependencies with Bower..."
npm install

echo "[REDSTONE-ARSENAL] Installing Javascript dependencies with Bower..."
bower install

echo "[REDSTONE-ARSENAL] Building the project with Grunt..."
grunt build

if [ $novm = false ]; then
  echo "[REDSTONE-ARSENAL] Setting up the VM..."

  # Start the VM to download the box with Vagrant and
  # provision it with Ansible
  vagrant up

  # Stop the machine
  vagrant halt

  echo "[REDSTONE-ARSENAL] Your VM is ready!"
else
  echo "[REDSTONE-ARSENAL] Skipping VM setup"
fi

echo "[REDSTONE-ARSENAL] All done!"