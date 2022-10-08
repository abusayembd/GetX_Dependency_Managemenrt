import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/b_get_lazy_put/get_Lazy_put/controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    // lazyLoad a dependency only when is used
    Get.lazyPut<ControllerNine>(() => ControllerNine());
  }
}
