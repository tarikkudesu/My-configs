#!/bin/sh

cat ~/.MakefileTools/.0001 | tr -d '\n' > Makefile
find . -name "*.cpp" | tr '\n' ' ' >> Makefile
cat ~/.MakefileTools/.0002 >> Makefile
printf "%%.o: %%.cpp " >> Makefile
find . -name "*.hpp" | tr '\n' ' ' >> Makefile
cat ~/.MakefileTools/.0003 >> Makefile
echo "Makefile was built"
echo "executable name prog!!!!!!!!!!!!!!!!"
echo "------ make sure to change it ------"
