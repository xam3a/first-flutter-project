// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_course/helper/init_dependency.dart';
import 'package:get/get.dart';
import 'HomePage.dart';
import 'helper/init_controllers.dart' as di;

Future<void> main() async {
  /** using helper 'init_controllers' **/
  /*WidgetsFlutterBinding.ensureInitialized();
  await di.init();*/
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitDep(),
      home: MyHomePage(),
    );
  }
}
