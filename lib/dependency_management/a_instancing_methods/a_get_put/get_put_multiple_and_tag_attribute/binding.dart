// ignore_for_file: unused_import

import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/a_get_put/get_put_multiple_and_tag_attribute/controller.dart';

import '../get_put_singleton_approach/controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    // lazyLoad a dependency only when is used
    Get.lazyPut<ControllerEight>(() => ControllerEight());
  }
}
