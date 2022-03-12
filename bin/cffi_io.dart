import '../generated_bindings.dart';
import 'dart:io' show Platform, Directory;
import 'package:path/path.dart' as path;
import 'dart:ffi' as ffi;

NativeLibrary createNativeLibrary() {
  var libraryPath =
      path.join(Directory.current.path, 'csrc', 'build', 'libhello.so');
  if (Platform.isMacOS) {
    libraryPath =
        path.join(Directory.current.path, 'csrc', 'build', 'libhello.dylib');
  } else if (Platform.isWindows) {
    libraryPath = path.join(
        Directory.current.path, 'csrc', 'build', 'Debug', 'hello.dll');
  }

  final dylib = ffi.DynamicLibrary.open(libraryPath);
  var native = NativeLibrary(dylib);
  return native;
}
