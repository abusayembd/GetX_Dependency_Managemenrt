import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/d_binding/binding_by_creating_binding_class_&_namedroute/controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ControllerSixteen>(() => ControllerSixteen());
  }
}
