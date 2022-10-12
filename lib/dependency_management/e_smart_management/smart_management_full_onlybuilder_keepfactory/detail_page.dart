import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/e_smart_management/smart_management_full_onlybuilder_keepfactory/controller.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key});

  final controller = Get.find<ControllerNineteen>();

  @override
  Widget build(BuildContext context) {
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
                '${controller.count.value}',
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