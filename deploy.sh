#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init

git config user.name "Michael SN"
git config user.email "michael.dev.nascimento@gmail.com"

git add -A
git commit -m 'deploy'

# for checking current repository
git remote -v 

# rename to main branch 
git branch -M main

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/Michael-SN/Hangaman-game-Jogo-da-Forca.git main

cd -

