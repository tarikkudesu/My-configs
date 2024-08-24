#!/bin/sh

clear
echo "Enter Class Name"

read	className

headerGuard=$(echo "$className" | tr '[:lower:]' '[:upper:]')
headerFile="$className.hpp"
touch $headerFile

echo "#ifndef ${headerGuard}_HPP" >> $headerFile
echo "# define ${headerGuard}_HPP\n\n# include <iostream>\n\n" >> $headerFile

echo "#endif" >> $headerFile

