import 'package:get/get.dart';

import '../../routes/pages.dart';
import '../../services/auth.dart';

class LoginController extends GetxController {
  final AuthService _authService = Get.find();

  void goToPhoneSignUpPage() =>
      Get.rootDelegate.toNamed(Routes.AUTH_PHONE_SIGNIN);
}
