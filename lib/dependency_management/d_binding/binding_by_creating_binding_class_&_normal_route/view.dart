import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'binding.dart';
import 'detail_page.dart';

class DependencyExampleBindingVayaBindingClassAndNormalRoute
    extends StatelessWidget {
  const DependencyExampleBindingVayaBindingClassAndNormalRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'GetX Dependency management Binding vaya Binding class & normal route',
            style: TextStyle(fontSize: 11),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //relative State management
              ElevatedButton(
                onPressed: () =>
                    Get.to(() => DetailPage(), binding: DetailsBinding()),
                child: const Text('Detail Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
