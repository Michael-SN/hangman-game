#!/usr/bin/env sh

set -e 

yarn build

cd dist

git init
git add -A
git commit -m "New Deployment"
git push  -f git@github.com:Michael-SN/Hangaman-game-Jogo-da-Forca.git main:hangman-game


cd -

