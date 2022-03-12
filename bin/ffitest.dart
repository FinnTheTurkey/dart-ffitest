import 'cffi.dart';

void main(List<String> arguments) {
  var native = createNativeLibrary();
  native.hello_world();
}
