#!/bin/bash
#set -x

rm -rf ./public
hugo --buildDrafts

mkdir -p public/jreed/docs/img

find content -name cover_* -exec cp {} ./public/img            \;
find content -name cover_* -exec cp {} ./public/jreed/docs/img \;


#mkdir -p public/categories/img
#cp ./public/img/defaultFav.ico ./public/categories/img
#mkdir -p public/tags/img
#cp ./public/img/defaultFav.ico ./public/tags/img

cp ./public/img/README.txt ./public/README.md


#
#sudo rm -rf /usr/share/monkey/dp/*
#cd public; sudo rsync -avD * /usr/share/monkey/dp; cd ..


rm -rf docs
mv public docs

