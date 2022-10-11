import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/d_binding/binding_vaya_creating_class/controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ControllerSixteen>(() => ControllerSixteen());
  }
}
