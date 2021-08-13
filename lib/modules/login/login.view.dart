import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_nav2_demo/routes/pages.dart';

import 'login.controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: <Widget>[
            Text("Login screen"),
            ElevatedButton(
                onPressed: controller.goToPhoneSignUpPage,
                child: Text("Press to navigate")),
          ],
        ));
  }
}
