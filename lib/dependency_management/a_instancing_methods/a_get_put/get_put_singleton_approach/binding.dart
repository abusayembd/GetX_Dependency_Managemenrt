import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/a_get_put/get_put_singleton_approach/controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    // lazyLoad a dependency only when is used
    Get.lazyPut<ControllerSix>(() => ControllerSix());
  }
}
