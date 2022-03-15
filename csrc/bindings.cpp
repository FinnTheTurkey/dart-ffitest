// TODO: In the future this would be auto generated
#include "hello.h"
#include <emscripten/bind.h>
#include <stdint.h>

#define POINTER_SIZE uint64_t
#ifdef EMSCRIPTEN
#define POINTER_SIZE uint32_t
#endif

using namespace emscripten;

EMSCRIPTEN_BINDINGS(hello_test) {

  value_object<struct SpecialNumbers>("SpecialNumbers")
      .field("number1", &SpecialNumbers::number1)
      .field("number2", &SpecialNumbers::number2);

  function("hello_world", &hello_world);
  function("get_special_numbers", &get_special_numbers);
  function("check_special_numbers", &check_special_numbers);

  function("get_pointer",
           optional_override([]() { return (POINTER_SIZE)get_pointer(); }));
  function("check_pointer", optional_override([](POINTER_SIZE ptr) {
             return check_pointer((struct SpecialNumbers *)ptr);
           }));
}
