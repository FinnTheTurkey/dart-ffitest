class NativeLibrary {
  NativeLibrary();

  void hello_world() {
    throw UnsupportedError("Unsupported: Use web or io platform instead");
  }
}

NativeLibrary createNativeLibrary() {
  return NativeLibrary();
}
