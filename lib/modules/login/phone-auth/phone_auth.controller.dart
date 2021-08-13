import 'package:get/get.dart';

import '../../../routes/pages.dart';

class PhoneAuthController extends GetxController {
  void navigateToPhoneVerification() {
    Get.rootDelegate.toNamed(Routes.AUTH_PHONE_VERIFY);
  }

  void navigateToPhoneSignInScreen() {
    Get.rootDelegate.toNamed(Routes.AUTH_PHONE_SIGNIN);
  }
}
