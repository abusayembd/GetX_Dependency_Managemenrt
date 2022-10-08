import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/a_get_put/get_put_multiple_and_tag_and_permanent_attribute/controller.dart';

class DependencyExampleGetPutMultipleTagAndPermanentController
    extends StatelessWidget {
  DependencyExampleGetPutMultipleTagAndPermanentController({super.key});

  //Singleton, one instance share with entire app
  //rather Controller controller = ControllerSix();
  final controller = Get.put(ControllerSeven());
  final controller2 = Get.put(ControllerSeven(),
      tag: 'uniqueID',
      //parmanent will keep instance throughout the entire app
      //if we destroy the view then the controller will remove from the memory
      //so if we wanna keep it alive don't wanna destroy the controller we use permanent: true
      permanent: true);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            "GetX Dependency Management Get.put() multiple instance with permanent controller ",
            style: TextStyle(fontSize: 10),
          )),
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
              )
            ],
          ),
        ),
        /*
        //there are multiple instance and Get.find is finding first one
        //because we haven't used the tags located on the coontroller2 
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.find<ControllerSeven>().increment(),
          child: const Icon(Icons.add),
        ),
        */

        //as there are multiple instance if we just write
        //then  Get.find<ControllerSeven>().increment(), then it will just grab that controller
        //but here we specified the tag so only controller with tag will be accrssed
        //so here only the second number will increase
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              Get.find<ControllerSeven>(tag: 'uniqueID').increment(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
