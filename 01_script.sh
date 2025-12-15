#!/bin/bash

#This is single line comment

<<comment
This
is
multi
line comments
comment

name="Aniket"
age=20

echo "My name is $name and age is $age"

name="Harry"

echo "His name is $name"

#Variable to store the output of commands

HOST=$(hostname)

echo "This machine name is $HOST"
echo "Name of this machine is $(hostname)"

