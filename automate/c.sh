#!/bin/sh

cat ~/local/automate/MakefileTools/.0001 | tr -d '\n' > Makefile
find . -name "*.c" | tr '\n' ' ' >> Makefile
cat ~/local/automate/MakefileTools/.0002c >> Makefile
printf "%%.o: %%.c " >> Makefile
find . -name "*.h" | tr '\n' ' ' >> Makefile
cat ~/local/automate/MakefileTools/.0003c >> Makefile
echo "Makefile was built: executable name prog!! make sure to change it"
