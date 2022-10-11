import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'binding.dart';
import 'detail_page.dart';

class DependencyExampleBindingVayaClass extends StatelessWidget {
  const DependencyExampleBindingVayaClass({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/detail',
          page: () => DetailPage(),
          binding: DetailsBinding(),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'GetX Dependency management Binding vaya creating class',
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
