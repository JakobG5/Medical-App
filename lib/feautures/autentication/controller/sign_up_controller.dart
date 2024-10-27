import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/feautures/autentication/screens/login_screen.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final dateOfBirthController = TextEditingController();

  RxBool isVisible = false.obs;
  RxBool isVisibleDefault = false.obs;

  void toogleVisibility() {
    isVisible.value = !isVisible.value;
  }

  void goToLogin() {
    Get.to(const LoginScreen());
  }
}
