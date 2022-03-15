class NativeLibrary {
  NativeLibrary();

  void hello_world() {
    throw UnsupportedError("Unsupported: Use web or io platform instead");
  }

  SpecialNumbers get_special_numbers() {
    throw UnsupportedError("Unsupported: Use web or io platform instead");
  }

  int check_special_numbers(SpecialNumbers ns) {
    throw UnsupportedError("Unsupported: Use web or io platform instead");
  }

  Pointer<SpecialNumbers> get_pointer() {
    throw UnsupportedError("Unsupported: Use web or io platform instead");
  }

  int check_pointer(Pointer<SpecialNumbers> ptr) {
    throw UnsupportedError("Unsupported: Use web or io platform instead");
  }
}

class SpecialNumbers {
  external int number1;
  external double number2;
}

class Pointer<U> {}

NativeLibrary createNativeLibrary() {
  return NativeLibrary();
}
