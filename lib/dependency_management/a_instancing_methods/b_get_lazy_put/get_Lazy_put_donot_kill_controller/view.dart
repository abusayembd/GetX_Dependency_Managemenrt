import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/b_get_lazy_put/get_Lazy_put_donot_kill_controller/controller.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/b_get_lazy_put/get_Lazy_put_donot_kill_controller/detail_page.dart';

class DependencyExampleGetLazyPutWithoutKillingController
    extends StatelessWidget {
  const DependencyExampleGetLazyPutWithoutKillingController({super.key});

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

              Get.lazyPut<ControllerTen>(
                () => ControllerTen(),
                //tag: 'uniqueId for lazyPut',

                // if finix is true then it will keep the controller in the
                //memory so next time initialixing will be very very fast
                //use it basis on the priority of the page
                // like frequently visited page can have finix true
                fenix: true,
                /*
                  [GETX] Instance "GetMaterialController" has been created
                  [GETX] Instance "GetMaterialController" has been initialized
                  D/EGL_emulation( 5655): app_time_stats: avg=11204.68ms min=11204.68ms max=11204.68ms count=1
                  [GETX] GOING TO ROUTE /detail
                  [GETX] Instance "ControllerTen" has been created
                  I/flutter ( 5655): Controller onInit been called
                  [GETX] Instance "ControllerTen" has been initialized
                  { D/EGL_emulation( 5655): app_time_stats: avg=2148.91ms min=2148.91ms max=2148.91ms count=1
                   it took  2148.91ms
                   }
                  I/flutter ( 5655): Controller onReady been called
                  [GETX] CLOSE TO ROUTE /detail
                  D/EGL_emulation( 5655): app_time_stats: avg=763.39ms min=29.40ms max=2180.99ms count=3
                  I/flutter ( 5655): Controller onClose been called
                  [GETX] "ControllerTen" onDelete() called
                  D/EGL_emulation( 5655): app_time_stats: avg=73.45ms min=6.54ms max=887.18ms count=16
                  [GETX] GOING TO ROUTE /detail
                  I/flutter ( 5655): Controller onInit been called
                  [GETX] Instance "ControllerTen" has been created
                  [GETX] Instance "ControllerTen" has been initialized
                  {
                    as the controller is deleted but not been removed from memory next time it took 0.0ms to be re initialized
                  }

                */
              );
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
