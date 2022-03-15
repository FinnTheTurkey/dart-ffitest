// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#include "hello.h"
#include <stdio.h>
#include <stdlib.h>

int main() {
  hello_world();
  return 0;
}

// Note:
// ---only on Windows---
// Every function needs to be exported to be able to access the functions by
// dart. Refer: https://stackoverflow.com/q/225432/8608146
void hello_world() { printf("Hello World: %lu\n", sizeof(void *)); }

struct SpecialNumbers get_special_numbers() {
  struct SpecialNumbers nums;
  nums.number1 = 420;
  nums.number2 = 6.9;
  printf("Made nice numbers\n");

  return nums;
}

int check_special_numbers(struct SpecialNumbers numbers) {
  if (numbers.number1 == 420) {
    printf("Checked nice numbers\n");
    return 1;
  }

  printf("Checked unnice numbers\n");
  return 0;
}

struct SpecialNumbers *get_pointer() {
  struct SpecialNumbers *nums = malloc(sizeof(struct SpecialNumbers));
  nums->number1 = 420;
  nums->number2 = 6.9;

  return nums;
}

int check_pointer(struct SpecialNumbers *ptr) {
  return check_special_numbers(*ptr);
}
