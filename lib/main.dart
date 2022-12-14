// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:getx_dependency_management/dependency_management/a_instancing_methods/a_get_put/get_put_multiple_and_tag_and_permanent_attribute/view.dart';
import 'package:getx_dependency_management/dependency_management/c_alternet_controller/alternet_controller_get_lazy_replace/view.dart';

import 'dependency_management/a_instancing_methods/b_get_lazy_put/get_Lazy_put/view.dart';
import 'dependency_management/a_instancing_methods/b_get_lazy_put/get_Lazy_put_donot_kill_controller/view.dart';
import 'dependency_management/a_instancing_methods/c_get_put_async/view.dart';
import 'dependency_management/a_instancing_methods/d_get_create/view.dart';
import 'dependency_management/b_find_controller/two_different_ways_of_finding_controller/view.dart';
import 'dependency_management/c_alternet_controller/alternet_controller_get_replace/view.dart';
import 'dependency_management/d_binding/binding_by_creating_binding_class_&_named_route/view.dart';
import 'dependency_management/d_binding/binding_by_creating_binding_class_&_normal_route/view.dart';
import 'dependency_management/d_binding/binding_shortcut_using_buinding_builder/view.dart';
import 'dependency_management/e_smart_management/smart_management_full_onlybuilder_keepfactory/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //return DependencyExampleGetPutSingleton();
    //return DependencyExampleGetPutMultipleAndTag();
    //return DependencyExampleGetPutMultipleTagAndPermanentController();
    //return const DependencyExampleGetLazyPut();
    //return const DependencyExampleGetLazyPutWithoutKillingController();
    //return const DependencyExampleGetDotPutAsync();
    //return const DependencyExampleGetDotCreate();
    //return WaysOfFindingController();
    //return DependencyExampleAlternetControllerGetReplace();
    //return DependencyExampleAlternetControllerGetLazyReplace();
    //return const DependencyExampleBindingVayaBindingClassAndNamedRoute();
    //return const DependencyExampleBindingVayaBindingClassAndNormalRoute();
    //return const DependencyExampleBindingShortcutUsingBuindingBuilder();
    return const DependencyExampleSmartManagementFullAndOnlyBuilderAndKeepFactory();
  }
}
