import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'phone_auth.controller.dart';

class PhoneVerificationView extends GetView<PhoneAuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          iconTheme: Theme.of(context).iconTheme,
          leading: const BackButton(color: Colors.black),
        ),
        body: Center(
          child: Text("Phone verification screen"),
        ));
  }
}
