#!/bin/bash

currentdir=$(pwd)

for link in .*
do
    if [ $link = ".git" ]
    then
	echo No $link link needed 
    else
	    
	cd ..
	if [ -e $link ]
	then
	    echo $link Exists
	else
	    echo $link
	    ln -s ConfigFiles/$link $link
	fi
    fi
    cd $currentdir 
done

