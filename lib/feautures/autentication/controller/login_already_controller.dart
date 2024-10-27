import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginAlreadyController extends GetxController {
  static LoginAlreadyController get instance => Get.find();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  RxBool isObscure = false.obs;

  void toogleVisibility() {
    isObscure.value = !isObscure.value;
  }
}
