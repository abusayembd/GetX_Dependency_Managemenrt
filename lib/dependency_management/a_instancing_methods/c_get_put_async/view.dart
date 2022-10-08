import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/a_get_put/get_put_multiple_and_tag_and_permanent_attribute/class.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/c_get_put_async/controller.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/c_get_put_async/detail_page.dart';

class DependencyExampleGetDotPutAsync extends StatelessWidget {
  const DependencyExampleGetDotPutAsync({super.key});

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
              Get.lazyPut<ControllerEleven>(() => ControllerEleven());
              Get.putAsync<AsyncTask>(
                () async {
                  await Future.delayed(const Duration(seconds: 5));
                  return AsyncTask();
                },
                permanent: false,
              );
            },
          ),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'GetX Dependency management Get.putAsync( );',
            style: TextStyle(fontSize: 15),
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
