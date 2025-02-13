#!/bin/bash

OLD_repo=$1
NEW_repo=$2

git clone --mirror $OLD_repo repo_temp
mv .env Hi.sh mirror.sh repo_temp

cd repo_temp
git remote set-url origin $NEW_repo
git push --mirror
cd ..
rm -rf repo_temp
echo "Repository u pasqyrua nga $OLD_repo ne $NEW_repo"