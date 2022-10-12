import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_management/dependency_management/e_smart_management/smart_management_full_onlybuilder_keepfactory/controller.dart';
import 'detail_page.dart';

/*
Smart Management Full
Dispose classess that are not being used and ware not 
set to be permanent will automaticly delete those controller  and 
will automaticly manage those for us


onlyBuilder --  they don't have permission for 
dispose those class that using Get.put & Get.putAsync

keep Factory -- means will save our controller in factory and will recreate theose
dependency when it need again something similar with fenix
*/

class DependencyExampleSmartManagementFullAndOnlyBuilderAndKeepFactory
    extends StatelessWidget {
  const DependencyExampleSmartManagementFullAndOnlyBuilderAndKeepFactory(
      {super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      smartManagement: SmartManagement.full,
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/detail',
          page: () => DetailPage(),
          binding: BindingsBuilder(
            () {
              Get.lazyPut<ControllerNineteen>(() => ControllerNineteen());
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
