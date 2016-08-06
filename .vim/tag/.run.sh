#1
ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -f cpp.db ./cpp_src
#2
ctags -R -I __THROW --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=no --c-kinds=+p -f ./sys.db /usr/include
