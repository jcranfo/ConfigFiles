#!/bin/bash

currentdir=$(pwd)


for link in .*
do
    if [ $link == "." ] || [ $link == ".."  ]
    then
    	echo Skip $link  
    else
	    
	cd $HOME
	if [ -e $link ]
	then
	    echo $link Exists
	else
	    echo $link
	    ln -s $currentdir/$link $link
	fi
    fi
    cd $currentdir 
done

