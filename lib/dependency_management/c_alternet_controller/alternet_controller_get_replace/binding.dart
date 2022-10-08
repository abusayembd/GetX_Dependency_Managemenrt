import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/c_alternet_controller/alternet_controller_get_replace/controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ControllerFourteen>(() => ControllerFourteen());
  }
}
