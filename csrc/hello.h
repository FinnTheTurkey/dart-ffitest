// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#ifdef __cplusplus
extern "C" {
#endif

struct SpecialNumbers {
  int number1;
  float number2;
};

void hello_world();

struct SpecialNumbers get_special_numbers();

int check_special_numbers(struct SpecialNumbers numbers);

#ifdef __cplusplus
}
#endif
