import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/c_alternet_controller/alternet_controller_get_lazy_replace/controller.dart';
import 'package:getx_dependency_management/dependency_management/c_alternet_controller/alternet_controller_get_lazy_replace/detail_page.dart';
import 'class_three.dart';

class DependencyExampleAlternetControllerGetLazyReplace
    extends StatelessWidget {
  DependencyExampleAlternetControllerGetLazyReplace({super.key});

  // though this way is ok but in real life usually we forget the order
  // like here if we use parent before child
  //then 'is child? ${child is Child}' will be false  so using replace is best
  // final child = Get.put<Parent>(Child());
  //final parent = Get.put<Parent>(Parent());

  //
  //best approach to use Get.Lazyreplace which reduce the hassle of keeping track
  //defference between get.replace and get.lazyreplace is time
  // get.replace inject dependency imnstantly but  get.lazyreplace inject when nedded/called
  final parent = Get.put<Parent>(Parent());
  final child = Get.lazyReplace<Parent>(() => Child());

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

              Get.lazyPut<ControllerFifteen>(() => ControllerFifteen());
            },
          ),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'GetX Dependency management alternet controller() get.lazyreplace;',
            style: TextStyle(fontSize: 12),
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
