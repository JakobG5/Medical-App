import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/feautures/autentication/controller/login_already_controller.dart';
import '../../../common/styles/text_style.dart';
import '../../../common/widget/text_field_card.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/space.dart';
import '../../../utils/device_util/utils.dart';

class LoginScreenAlreadyLogedIn extends StatelessWidget {
  const LoginScreenAlreadyLogedIn({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginAlreadyController());
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: MColors.primaryColor1),
        centerTitle: true,
        elevation:3,
        title: Text(
          'Hello',
          style: MText.semiBold24.copyWith(color: MColors.primaryColor1),
        ),
      ),
      body: SizedBox(
        height: MUtils.getScreenHeight(context),
        width: MUtils.getScreenWidth(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: MSpace.space12),
              Text('Welcome',
                  style:
                      MText.semiBold24.copyWith(color: MColors.primaryColor1)),
              const SizedBox(height: MSpace.space47),
              TextFieldCard(
                controller: controller.emailController,
                  inputType: TextInputType.emailAddress,
                label: 'example@example.com',
                headerText: 'Email or Mobile Number',
              ),
              const SizedBox(height: 2),
              TextFieldCard(
                controller: controller.passwordController,
                inputType: TextInputType.text,
                isObscure: controller.isObscure,
                label: '*********',
                headerText: 'Password',
                toogleVisibility: controller.toogleVisibility,
                suffixFalse: Icons.visibility,
                suffixTrue: Icons.visibility_off,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
