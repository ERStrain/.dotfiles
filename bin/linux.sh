#!/bin/bash

if (uname -eq "Linux")
	mkdir -p ~/.TRASH
	rename -f .vimrc .bup_vimrc
	echo "Log:  .vimrc was renamed to .bup_vimrc" >> linuxsetup.log
	./etc/.vimrc > ~/.vimrc
else
	echo "Error:  The Operating System is not Linux" >> linuxsetup.log
	exit

