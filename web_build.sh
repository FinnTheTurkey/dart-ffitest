cd csrc/embuild
emcmake cmake ..
cmake --build .
dart compile js ../../bin/ffitest.dart
