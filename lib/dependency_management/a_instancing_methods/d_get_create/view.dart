import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/d_get_create/controller.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/d_get_create/detail_page.dart';

class DependencyExampleGetDotCreate extends StatelessWidget {
  const DependencyExampleGetDotCreate({super.key});

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
              //GEt. create create separate conteoller evwrytime use the method
              //eg here 2 times we used get.create so 2 seperater controller will be created
              /*
              Debug console output 

              I/flutter ( 3132): Controller onInit been called -- 1 time
              [GETX] Instance "ControllerTwelve" has been initialized
              I/flutter ( 3132): Controller onInit been called -- 2 time
              [GETX] Instance "ControllerTwelve" has been initialized
              
              2 I/flutter ( 3132): Controller onReady been called -- on ready called 2 times
              */
              Get.create<ControllerTwelve>(() => ControllerTwelve(),
                  permanent: true);
              Get.create<ControllerTwelve>(() => ControllerTwelve(),
                  permanent: true);
            },
          ),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'GetX Dependency management Get.create( );',
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
