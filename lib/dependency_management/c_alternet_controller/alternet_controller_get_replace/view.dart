import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/c_alternet_controller/alternet_controller_get_replace/controller.dart';

class DependencyExampleAlternetControllerGetReplace extends StatelessWidget {
  DependencyExampleAlternetControllerGetReplace({super.key});

  final controller = Get.put(ControllerFourteen());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("GetX Dependency Management ")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  '${controller.count.value}',
                  style: const TextStyle(fontSize: 28.0),
                ),
              ),
              Obx(
                () => Text(
                  '${controller.count.value}',
                  style: const TextStyle(fontSize: 28.0),
                ),
              )
            ],
          ),
        ),
        //if we press the button both number will be increased because
        //we share same controller (controller = ControllerSix, controller2 = ControllerSix )
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.find<ControllerFourteen>().increment(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
