import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/feautures/autentication/screens/forget_password.dart';
import 'package:medical_app/feautures/autentication/screens/sign_up_screen.dart';
import 'package:medical_app/feautures/presentaion/screen/main_route.dart';

class LoginScreenController extends GetxController {
  static LoginScreenController get instance => Get.find();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  RxBool isObscureEmail = false.obs;
  RxBool isObscurePassword = true.obs;

  void toogleVisibility() {
    isObscurePassword.value = !isObscurePassword.value;
  }

  void goToForgetPassword() {
    Get.to(const ForgetPassword());
  }

  void goToSignUp() {
    Get.to(const SignUpScreen());
  }

  void goToMainScreen() {
    Get.to(const MainRoute());
  }
}
