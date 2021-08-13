import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/pages.dart';
import 'home.controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Column(
        children: [
          Text("home"),
          ElevatedButton(
              onPressed: () => Get.rootDelegate.toNamed(Routes.AUTH),
              child: Text("auth"))
        ],
      )),
    );
  }
}
