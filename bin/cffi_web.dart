import 'dart:js';

class NativeLibrary {
  NativeLibrary();

  void hello_world() {
    context.callMethod('_hello_world');
  }
}

NativeLibrary createNativeLibrary() {
  return NativeLibrary();
}
