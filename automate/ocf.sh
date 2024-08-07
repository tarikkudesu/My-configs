#!/bin/sh

clear
echo "Enter Class Name"

read	className

headerGuard=$(echo "$className" | tr '[:lower:]' '[:upper:]')
headerFile="$className.hpp"
cppFile="$className.cpp"
touch $headerFile

echo "#ifndef ${headerGuard}_HPP" >> $headerFile
echo "# define ${headerGuard}_HPP\n\n# include <iostream>\n" >> $headerFile
echo "class ${className}\n{" >> $headerFile
echo "\tprivate :\n" >> $headerFile
echo "\tpublic:" >> $headerFile
echo "\t\t${className}();" >> $headerFile
echo "\t\t${className}( const ${className} &copy );" >> $headerFile
echo "\t\t${className}	&operator=( const ${className} &assign );" >> $headerFile
echo "\t\t~${className}();" >> $headerFile
echo "};\n" >> $headerFile

echo "#endif" >> $headerFile


echo "#include \"${className}.hpp\"\n" >> $cppFile
echo "${className}::${className}() {" >> $cppFile
echo "\tstd::cout << \"${className} Default constructor called\" << std::endl;\n}\n" >> $cppFile
echo "${className}::${className}( const ${className} &copy ) {" >> $cppFile
echo "\tstd::cout << \"${className} copy constructor called\" << std::endl;" >> $cppFile
echo "\t(void) copy;\n}\n" >> $cppFile
echo "${className}::~${className}() {" >> $cppFile
echo "\tstd::cout << \"${className} Desctructor called\" << std::endl;\n}\n" >> $cppFile
echo "${className}\t&${className}::operator=( const ${className} &assign ) {" >> $cppFile
echo "\tstd::cout << \"${className} Copy assignment operator called\" << std::endl;\n\t(void) assign;\n\treturn *this;\n}" >> $cppFile

