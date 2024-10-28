import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  static EditProfileController get instance => Get.find();

  final fullNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final dateOfBirthController = TextEditingController();

  RxBool isVisible = false.obs;
}
