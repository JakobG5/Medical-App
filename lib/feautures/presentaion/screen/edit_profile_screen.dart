import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/common/widget/custom_main_button.dart';
import 'package:medical_app/common/widget/text_field_card.dart';
import 'package:medical_app/feautures/presentaion/controller/edit_profile_controller.dart';

import '../../../common/styles/text_style.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/space.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EditProfileController());
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: MColors.primaryColor1),
        elevation: 3,
        centerTitle: true,
        title: Text(
          'Forgot Password',
          style: MText.semiBold24.copyWith(color: MColors.primaryColor1),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(height: MSpace.space12),
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 106,
                    width: 106,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/Frame (13).png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 28,
                      width: 28,
                      decoration: const BoxDecoration(
                        color: MColors.primaryColor1,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Image(
                          image: AssetImage('assets/images/Vector.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: MSpace.space36),
            TextFieldCard(
              controller: controller.fullNameController,
              inputType: TextInputType.text,
              label: 'Jhon Doe',
              headerText: 'Full Name',
              isObscure: controller.isVisible,
            ),
            const SizedBox(height: MSpace.space16),
            TextFieldCard(
              controller: controller.phoneNumberController,
              inputType: TextInputType.phone,
              label: '+251 ... ',
              headerText: 'Phone Number',
              isObscure: controller.isVisible,
            ),
            const SizedBox(height: MSpace.space16),
            TextFieldCard(
              controller: controller.emailController,
              inputType: TextInputType.emailAddress,
              label: 'JhonDoe@gmail.com',
              headerText: 'Email',
              isObscure: controller.isVisible,
            ),
            const SizedBox(height: MSpace.space16),
            TextFieldCard(
              controller: controller.dateOfBirthController,
              inputType: TextInputType.datetime,
              label: 'DD/MM/YYYY',
              headerText: 'Date Of Birth',
              isObscure: controller.isVisible,
            ),
            const SizedBox(height: MSpace.space34),
            CustomMainButton(
                btnText: 'Update Profile', funciton: () {}, isBold: true),
          ],
        ),
      )),
    );
  }
}
