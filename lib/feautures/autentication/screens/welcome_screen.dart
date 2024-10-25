import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/feautures/autentication/controller/welcome_screen_controller.dart';
import 'package:medical_app/utils/device_util/utils.dart';
import '../../../common/styles/text_style.dart';
import '../../../common/widget/custom_main_button.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/space.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WelcomeScreenController());
    return Scaffold(
      backgroundColor: MColors.white,
      body: SizedBox(
        width: MUtils.getScreenWidth(context),
        height: MUtils.getScreenHeight(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Group 93.png'),
            const SizedBox(height: MSpace.space8),
            Text('Skin',
                style: MText.thin48.copyWith(color: MColors.primaryColor1)),
            Text('Firts',
                style: MText.thin48.copyWith(color: MColors.primaryColor1)),
            const SizedBox(height: MSpace.space8),
            Text(
              'Dermatology Center',
              style: MText.semiBold12.copyWith(color: MColors.primaryColor1),
            ),
            const SizedBox(height: MSpace.space12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 52),
              child: Text(
                'Lorem ipsum dolo sit smet,cosectuer adipiscing elite,seed do eidsmad tempor indifidunt ut labore et dolore magana aliqua',
                style: MText.light12.copyWith(color: MColors.black2),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: MSpace.space36),
            CustomMainButton(
              btnText: 'Log In',
              isBold: true,
              funciton: controller.goToSignInScreen,
            ),
            const SizedBox(height: MSpace.space8),
            CustomMainButton(
              btnText: 'Sign In',
              isBold: false,
              funciton: controller.goToSignInScreen,
            ),
          ],
        ),
      ),
    );
  }
}
