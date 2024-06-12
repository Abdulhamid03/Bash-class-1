#!/bin/bash

read -p "what is your name?: " name 

if [ $name == "Abdul" ]; then
	echo "hello there $name"
else
	echo "you don't belong here"
fi

