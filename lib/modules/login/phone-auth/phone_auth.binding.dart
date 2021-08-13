import 'package:get/get.dart';

import 'phone_auth.controller.dart';

class PhoneAuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhoneAuthController>(() => PhoneAuthController(), fenix: true);
  }
}
