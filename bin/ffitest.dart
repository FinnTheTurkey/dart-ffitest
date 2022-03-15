import 'cffi.dart';

void main(List<String> arguments) {
  var native = createNativeLibrary();
  native.hello_world();
  var sn = native.get_special_numbers();
  print(sn);
  print(native.check_special_numbers(sn));
  print("With pointer:");
}
