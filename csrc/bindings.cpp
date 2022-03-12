// TODO: In the future this would be auto generated
#include "hello.h"
#include <emscripten/bind.h>

using namespace emscripten;

EMSCRIPTEN_BINDINGS(hello_test) {

  value_object<SpecialNumbers>("SpecialNumbers")
      .field("number1", &SpecialNumbers::number1)
      .field("number2", &SpecialNumbers::number2);

  function("hello_world", &hello_world);
  function("get_special_numbers", &get_special_numbers);
  function("check_special_numbers", &check_special_numbers);
}
