import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/common/widget/settings_card.dart';
import 'package:medical_app/feautures/presentaion/controller/profile_controller.dart';
import 'package:medical_app/utils/constants/space.dart';
import '../../../common/styles/text_style.dart';
import '../../../utils/constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              const SizedBox(
                height: MSpace.space12,
              ),
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
                      child: InkWell(
                        onTap: controller.goToEditProifleScreen,
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
                    )
                  ],
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'Jhon Doe',
                style: MText.semiBold24.copyWith(color: MColors.black2),
              ),
              const SizedBox(height: 40),
              SettingsCard(
                  icon: Icons.person,
                  btnString: 'Profile',
                  funciton: () {
                    controller.goToEditProifleScreen();
                  }),
              const SizedBox(height: MSpace.space12),
              SettingsCard(
                  icon: Icons.favorite_outline,
                  btnString: 'Favourite',
                  funciton: () {}),
              const SizedBox(height: MSpace.space12),
              SettingsCard(
                  icon: Icons.payments_rounded,
                  btnString: 'Payment Method',
                  funciton: () {}),
              const SizedBox(height: MSpace.space12),
              SettingsCard(
                  icon: Icons.lock,
                  btnString: 'Privacy Policy',
                  funciton: () {}),
              const SizedBox(height: MSpace.space12),
              SettingsCard(
                  icon: Icons.settings, btnString: 'Settings', funciton: () {}),
              const SizedBox(height: MSpace.space12),
              SettingsCard(
                  icon: Icons.question_mark,
                  btnString: 'Help',
                  funciton: () {}),
              const SizedBox(height: MSpace.space12),
              SettingsCard(
                  icon: Icons.logout, btnString: 'Log Out', funciton: () {}),
              const SizedBox(height: MSpace.space12),
            ],
          ),
        ),
      ),
    );
  }
}
