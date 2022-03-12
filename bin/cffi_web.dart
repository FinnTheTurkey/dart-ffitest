import 'package:js/js.dart';

// We have to do this the stupid way to maintain compatability with ffigen

@JS('Module.hello_world')
external void __hello_world();

@JS("Module.get_special_numbers")
external SpecialNumbers __get_special_numbers();

@JS("Module.check_special_numbers")
external int __check_special_numbers(SpecialNumbers numbers);

class NativeLibrary {
  NativeLibrary();

  void hello_world() {
    return __hello_world();
  }

  SpecialNumbers get_special_numbers() {
    return __get_special_numbers();
  }

  int check_special_numbers(SpecialNumbers numbers) {
    return __check_special_numbers(numbers);
  }
}

@JS("Module.SpecialNumbers")
class SpecialNumbers {
  external int number1;
  external double number2;
}

NativeLibrary createNativeLibrary() {
  return NativeLibrary();
}
