import 'package:flutter_course/controllers/list_controller.dart';
import 'package:get/get.dart';

import '../controllers/tap_controller.dart';

Future<void> init() async {
  Get.lazyPut(() => TapController());
  Get.lazyPut(() => ListController());
}
