import 'package:get/get.dart';
import 'package:getx_nav2_demo/modules/home/home.controller.dart';

import 'home.controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
