import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/c_get_put_async/controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    // lazyLoad a dependency only when is used
    Get.lazyPut<ControllerEleven>(() => ControllerEleven());
  }
}
