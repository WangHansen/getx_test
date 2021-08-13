import 'package:get/get.dart';

import '../../modules/login/login.binding.dart';
import '../../modules/login/login.view.dart';
import '../../modules/login/phone-auth/phone_auth.binding.dart';
import '../../modules/login/phone-auth/phone_signin.view.dart';
import '../../modules/login/phone-auth/phone_verification.view.dart';
import '../../modules/root/root.binding.dart';
import '../../modules/root/root.view.dart';
import '../../modules/home/home.binding.dart';
import '../../modules/home/home.view.dart';

abstract class _Paths {
  static const String HOME = '/home';
  static const String AUTH = '/auth';
  static const String AUTH_PHONE_LOGIN = '/phone';
  static const String AUTH_PHONE_VERIFY = '/phoneVerification';
}

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;

  static const AUTH = _Paths.AUTH;
  // /auth/phone
  static const AUTH_PHONE_SIGNIN = _Paths.AUTH + _Paths.AUTH_PHONE_LOGIN;
  // /auth/phoneVerification
  static const AUTH_PHONE_VERIFY = _Paths.AUTH + _Paths.AUTH_PHONE_VERIFY;
}

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: '/',
        page: () => RootView(),
        binding: RootBinding(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        children: [
          // Auth related
          GetPage(
              name: _Paths.AUTH,
              page: () => LoginView(),
              binding: LoginBinding(),
              children: [
                GetPage(
                    name: _Paths.AUTH_PHONE_LOGIN,
                    page: () => PhoneSignInView(),
                    binding: PhoneAuthBinding()),
                GetPage(
                    name: _Paths.AUTH_PHONE_VERIFY,
                    page: () => PhoneVerificationView(),
                    binding: PhoneAuthBinding())
              ]),
          GetPage(
            name: _Paths.HOME,
            page: () => HomeView(),
            binding: HomeBinding(),
          )
        ])
  ];
}
