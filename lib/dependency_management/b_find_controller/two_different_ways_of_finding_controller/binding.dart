import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/b_find_controller/two_different_ways_of_finding_controller/controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    // lazyLoad a dependency only when is used
    Get.lazyPut<ControllerThirteen>(() => ControllerThirteen());
  }
}
