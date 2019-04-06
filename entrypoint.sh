#!/bin/bash
set -e

echo "#################################################"
echo "Starting the git Action"

echo "$SSH_PRIVATE_KEY" > ~/.ssh/id_rsa
chmod 400 ~/.ssh/id_rsa
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa

sh -c "$*"

echo "#################################################"
echo "Completed the git Action"
