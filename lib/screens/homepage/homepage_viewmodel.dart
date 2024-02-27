import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update();
  }

  void decrement() {
    (!Get.isSnackbarOpen && counter <= 0)
        ? Get.snackbar(
            "Error",
            "Number cannot be less than 0",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          )
        : (counter > 0)
            ? counter--
            : null;
    update();
  }
}
