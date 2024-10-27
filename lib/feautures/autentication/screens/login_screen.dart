import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/common/styles/text_style.dart';
import 'package:medical_app/common/widget/greeting_intro_widget.dart';
import 'package:medical_app/utils/device_util/utils.dart';
import '../../../common/widget/custom_main_button.dart';
import '../../../common/widget/sign_in_option_btn.dart';
import '../../../common/widget/text_field_card.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/space.dart';
import '../controller/login_screen_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginScreenController());
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: MColors.primaryColor1),
        centerTitle: true,
        elevation: 3,
        title: Text(
          'Log In',
          style: MText.semiBold24.copyWith(color: MColors.primaryColor1),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MUtils.getScreenHeight(context),
          width: MUtils.getScreenWidth(context),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: MSpace.space12),
                const GreetingIntroWidget(
                    headerText: 'Welcome',
                    description:
                        'Lorem ipsum dolo sit smet,cosectuer adipiscing elite,seed do eidsmad tempor indifidunt ut labore et dolore magana aliqua'),
                const SizedBox(height: 18),
                TextFieldCard(
                  controller: controller.emailController,
                  inputType: TextInputType.text,
                  isObscure: controller.isObscureEmail,
                  label: 'example@example.com',
                  headerText: 'Email or Mobile Number',
                  toogleVisibility: controller.toogleVisibility,
                ),
                const SizedBox(height: 8),
                TextFieldCard(
                  controller: controller.passwordController,
                  inputType: TextInputType.text,
                  isObscure: controller.isObscurePassword,
                  label: ' ~ ~ ~ ~ ~ ',
                  headerText: 'Password',
                  toogleVisibility: controller.toogleVisibility,
                  suffixFalse: Icons.visibility,
                  suffixTrue: Icons.visibility_off,
                ),
                const SizedBox(height: 2),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      controller.goToForgetPassword();
                    },
                    child: Text(
                      'forget Password',
                      style:
                          MText.medium12.copyWith(color: MColors.primaryColor1),
                    ),
                  ),
                ),
                const SizedBox(height: MSpace.space36),
                Center(
                  child: CustomMainButton(
                    btnText: 'Log In',
                    funciton: () {
                      controller.goToMainScreen();
                    },
                    isBold: true,
                  ),
                ),
                const SizedBox(height: MSpace.space16),
                Center(
                  child: Text('or sign in with',
                      style: MText.light12.copyWith(color: MColors.black2)),
                ),
                const SizedBox(height: MSpace.space12),
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
                    const SizedBox(width: MSpace.space8),
                    SignInOptionButton(
                      imagePath: 'assets/images/Vector 164.png',
                      function: () {},
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: MSpace.space38),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont\'t have an account? ',
                      style: MText.medium12.copyWith(color: MColors.black2),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.goToSignUp();
                      },
                      child: Text(
                        'Sign in',
                        style: MText.medium12
                            .copyWith(color: MColors.primaryColor1),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
