import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/d_binding/binding_by_creating_binding_class_&_normal_route/controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ControllerSeventeen>(() => ControllerSeventeen());
  }
}
