# Example C++ Project

More robust documentation (potentially) later
 - include (.hpp) files in include/
 - source code (.cpp) files in src/
 - exectuable (EXAMPLE_PROJECT) file in bin/
Configure the CMakeLists.txt yourself if you want to change the flags and stuff
Run the following to build:
```
cmake .
cmake --build .
```
Run the following to executable (configurable in the cmake configurations):
```
./bin/EXAMPLE_PROJECT
```
You can configure what compiler to use through cli flags:
```
cmake -B . -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++
```
You can configure the build system CMake uses through cli flags:
```
cmake -B . -G "MinGW Makefiles"
```
