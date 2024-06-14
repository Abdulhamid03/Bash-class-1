#!/bin/bash

read -p "what is your name?:" name

if [ $name == "Aiya" ]; then
	echo "you've been blocked: $name"

elif [ $name == "Abdul" ]; then
        echo "you are not authoruzid user: $name"

else
        echo "welcome back $name"
	
fi

