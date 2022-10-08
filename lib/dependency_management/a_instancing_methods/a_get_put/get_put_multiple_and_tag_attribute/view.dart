import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/a_get_put/get_put_multiple_and_tag_attribute/controller.dart';

class DependencyExampleGetPutMultipleAndTag extends StatelessWidget {
  DependencyExampleGetPutMultipleAndTag({super.key});

  //Singleton, one instance share with entire app
  //rather Controller controller = ControllerSeven();
  final controller = Get.put(ControllerEight());

  final controller2 = Get.put(ControllerEight(), tag: 'uniqueID');

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
        //
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              Get.find<ControllerEight>(tag: 'uniqueID').increment(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
