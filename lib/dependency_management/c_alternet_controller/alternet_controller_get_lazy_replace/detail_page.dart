import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/c_alternet_controller/alternet_controller_get_lazy_replace/controller.dart';

import 'class_three.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key});

  final controller2 = Get.find<ControllerFifteen>();
  final controller = Get.find<ControllerFifteen>();
  final child = Get.find<Parent>();

  @override
  Widget build(BuildContext context) {
    debugPrint('is child? ${child is Child}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
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
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.increment(),
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
