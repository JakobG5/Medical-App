import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/common/widget/custom_main_button.dart';
import '../../../common/styles/text_style.dart';
import '../../../common/widget/sign_in_option_btn.dart';
import '../../../common/widget/text_field_card.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/space.dart';
import '../controller/sign_up_controller.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: MColors.primaryColor1),
        centerTitle: true,
        elevation: 3,
        title: Text(
          'New Account',
          style: MText.semiBold24.copyWith(color: MColors.primaryColor1),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                const SizedBox(height: MSpace.space12),
                Row(
                  children: [
                    Expanded(
                      child: TextFieldCard(
                        controller: controller.firstNameController,
                        headerText: 'First Name',
                        inputType: TextInputType.name,
                        label: 'Jhon',
                        isObscure: controller.isVisibleDefault,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextFieldCard(
                        controller: controller.lastNameController,
                        headerText: 'Last Name',
                        inputType: TextInputType.name,
                        label: 'Doe',
                        isObscure: controller.isVisibleDefault,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: MSpace.space8),
                TextFieldCard(
                  controller: controller.passwordController,
                  headerText: 'Password',
                  inputType: TextInputType.text,
                  label: '********',
                  isObscure: controller.isVisible,
                  toogleVisibility: controller.toogleVisibility,
                  suffixFalse: Icons.visibility_off,
                  suffixTrue: Icons.visibility,
                ),
                const SizedBox(height: MSpace.space8),
                TextFieldCard(
                  controller: controller.emailController,
                  headerText: 'Email',
                  inputType: TextInputType.emailAddress,
                  label: 'JhonDoe@gmail.com',
                  isObscure: controller.isVisibleDefault,
                ),
                const SizedBox(height: MSpace.space8),
                TextFieldCard(
                  controller: controller.mobileNumberController,
                  headerText: 'Mobile Number',
                  inputType: TextInputType.phone,
                  label: '0900000000',
                  isObscure: controller.isVisibleDefault,
                ),
                const SizedBox(height: MSpace.space8),
                TextFieldCard(
                  controller: controller.dateOfBirthController,
                  headerText: 'Date of Birth',
                  inputType: TextInputType.datetime,
                  label: 'DD/MM/YYYY',
                  isObscure: controller.isVisibleDefault,
                ),
                const SizedBox(height: MSpace.space8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'By continuing,you agree to',
                      textAlign: TextAlign.center,
                      style: MText.medium12.copyWith(color: MColors.black2),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Terms of Use ',
                              style: MText.medium12
                                  .copyWith(color: MColors.primaryColor1),
                            )),
                        Text(
                          'and',
                          style: MText.medium12.copyWith(color: MColors.black2),
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Privacy Policy',
                              style: MText.medium12
                                  .copyWith(color: MColors.primaryColor1),
                            )),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 4),
                CustomMainButton(
                  btnText: 'Sign Up',
                  funciton: () {},
                  isBold: true,
                ),
                const SizedBox(height: 4),
                Center(
                  child: Text(
                    'or sign up with',
                    style: MText.light12.copyWith(color: MColors.black2),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Spacer(),
                    SignInOptionButton(
                      imagePath: 'assets/images/Ellipse 35.png',
                      function: () {},
                    ),
                    const SizedBox(width: MSpace.space8),
                    SignInOptionButton(
                      imagePath: 'assets/images/Group 98.png',
                      function: () {},
                    ),
                    const SizedBox(width: MSpace.space16),
                    const Spacer(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
