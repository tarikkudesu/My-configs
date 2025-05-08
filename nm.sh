#!/bin/bash

#Author Tarik AMEHRI
#42login : tamehri

echo -n "Enter project name: "
read project
dir="/home/$USER/goinfre/trash/$project/node_modules";
mkdir -p $dir
ln -s $dir node_modules
