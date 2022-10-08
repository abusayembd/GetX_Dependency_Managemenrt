import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerNine extends GetxController {
  // Declear the normal variable
  final count = 0.obs;

  void increment() {
    count.value++;
  }

  @override
  void onInit() {
    super.onInit();
    //called immediately after the widget is allocated in the memory
    debugPrint('Controller onInit been called');
  }

  @override
  void onReady() {
    super.onReady();
    //called after the widget is rendered on screen
    debugPrint("Controller onReady been called");
  }

  @override
  void onClose() {
    debugPrint("Controller onClose been called");
    //called just before the Controller is deleted from memory
    super.onClose();
  }
}
