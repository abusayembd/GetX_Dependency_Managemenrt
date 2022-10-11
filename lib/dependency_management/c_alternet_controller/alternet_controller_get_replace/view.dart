import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/c_alternet_controller/alternet_controller_get_replace/class.dart';
import 'package:getx_dependency_management/dependency_management/c_alternet_controller/alternet_controller_get_replace/controller.dart';
import 'package:getx_dependency_management/dependency_management/c_alternet_controller/alternet_controller_get_replace/detail_page.dart';

class DependencyExampleAlternetControllerGetReplace extends StatelessWidget {
  DependencyExampleAlternetControllerGetReplace({super.key});

  // though this way is ok but in real life usually we forget the order
  // like here if we use parent before child
  //then 'is child? ${child is Child}' will be false  so using replace is best
  // final child = Get.put<Parent>(Child());
  final parent = Get.put<Parent>(Parent());

  //
  //best approach to use Get.replace which reduce the hassle of keeping track
  final child = Get.replace<Parent>(Child());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/detail',
          page: () => DetailPage(),
          //building: DetailsBinding(),
          binding: BindingsBuilder(
            () {
              //you can implement it in bunding class or 2nd approach is BindingBuilder used here
              //lazyLoad a dependency only when is used. a shortcut method.

              Get.lazyPut<ControllerFourteen>(() => ControllerFourteen());
            },
          ),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'GetX Dependency management alternet controller();',
            style: TextStyle(fontSize: 16),
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
