#!/bin/bash

currentdir=$(pwd)

for link in .*
do
    if [ $link == "." ] || [ $link == ".."  ]
    then
	echo Skipping $link
    else
	echo Removing $HOME/$link
	rm -r $HOME/$link
    fi
done
