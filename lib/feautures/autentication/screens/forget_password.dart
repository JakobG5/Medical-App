import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/common/styles/text_style.dart';
import 'package:medical_app/common/widget/custom_main_button.dart';
import 'package:medical_app/common/widget/text_field_card.dart';
import 'package:medical_app/utils/constants/colors.dart';
import '../../../common/widget/greeting_intro_widget.dart';
import '../../../utils/constants/space.dart';
import '../controller/forgot_password_controller.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgotPasswordController());
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: MColors.primaryColor1),
        elevation: 3,
        title: Text(
          'Forgot Password',
          style: MText.semiBold24.copyWith(color: MColors.primaryColor1),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: MSpace.space12),
              const GreetingIntroWidget(
                  headerText: 'Forgot Password',
                  description:
                      'Please enter your email,we will send you an account  recovery link'),
              const SizedBox(height: MSpace.space20),
              TextFieldCard(
                controller: controller.emailController,
                inputType: TextInputType.emailAddress,
                label: 'johnDoe@gmail.com',
                headerText: 'Enter Your Email',
                isObscure: controller.isVisible,
              ),
              const SizedBox(height: MSpace.space47),
              Center(
                child: CustomMainButton(
                    btnText: 'Procced', funciton: () {}, isBold: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
