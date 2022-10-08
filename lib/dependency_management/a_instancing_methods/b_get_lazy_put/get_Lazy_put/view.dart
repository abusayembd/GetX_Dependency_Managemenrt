import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/b_get_lazy_put/get_Lazy_put/controller.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/b_get_lazy_put/get_Lazy_put/detail_page.dart';

class DependencyExampleGetLazyPut extends StatelessWidget {
  const DependencyExampleGetLazyPut({super.key});

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

              Get.lazyPut<ControllerNine>(() => ControllerNine());
            },
          ),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'GetX Dependency management Get.lazyPut();',
            style: TextStyle(fontSize: 18),
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
