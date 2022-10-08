import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/a_get_put/get_put_singleton_approach/controller.dart';

class DependencyExampleGetPutSingleton extends StatelessWidget {
  DependencyExampleGetPutSingleton({super.key});

  //Singleton, one instance share with entire app
  //rather Controller controller = ControllerSix();
  final controller = Get.put(ControllerSix());

  final controller2 = Get.put(ControllerSix());

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
                  '${controller2.count.value}',
                  style: const TextStyle(fontSize: 28.0),
                ),
              )
            ],
          ),
        ),
        //if we press the button both number will be increased because
        //we share same controller (controller = ControllerSix, controller2 = ControllerSix )
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.find<ControllerSix>().increment(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
