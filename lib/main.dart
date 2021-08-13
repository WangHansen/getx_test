import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/pages.dart';
import 'services/auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp.router(
    title: 'Demo',
    getPages: AppPages.routes,
    initialBinding: BindingsBuilder(
      () {
        Get.put(AuthService());
      },
    ),
  ));
}
