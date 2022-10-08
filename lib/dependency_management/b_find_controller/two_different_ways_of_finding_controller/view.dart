import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/b_find_controller/two_different_ways_of_finding_controller/controller.dart';

class WaysOfFindingController extends StatelessWidget {
  WaysOfFindingController({super.key});

  final controller = Get.put(ControllerThirteen());

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
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          //one way if globally you have find the controller by final controller = Get.find<ControllerThirteen>();
          //onPressed: () => controller.increment(),
          //second way if you haven't find the controller earlyer
          onPressed: () => Get.find<ControllerThirteen>().increment(),

          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
