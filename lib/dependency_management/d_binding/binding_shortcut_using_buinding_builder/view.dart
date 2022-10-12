import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/d_binding/binding_shortcut_using_buinding_builder/controller.dart';
import 'detail_page.dart';

class DependencyExampleBindingShortcutUsingBuindingBuilder
    extends StatelessWidget {
  const DependencyExampleBindingShortcutUsingBuindingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/detail',
          page: () => DetailPage(),
          binding: BindingsBuilder(
            () {
              Get.lazyPut<ControllerEightteen>(() => ControllerEightteen());
            },
          ),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'GetX Dependency management Binding by BuindingBuilder',
            style: TextStyle(fontSize: 14),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //relative State management
              ElevatedButton(
                onPressed: () => Get.toNamed('/detail'),
                child: const Text('Detail Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
