import 'package:flutter/material.dart';
import 'package:medical_app/utils/constants/colors.dart';

class SettingsCard extends StatelessWidget {
  final IconData icon;
  final String btnString;
  final Function()? funciton;
  const SettingsCard({
    super.key,
    required this.icon,
    required this.btnString,
    required this.funciton,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: funciton,
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: MColors.primaryColor2,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                icon,
                color: MColors.primaryColor1,
              ),
            ),
          ),
          const SizedBox(width: 21),
          Text(btnString),
          const Spacer(),
          const Icon(
            Icons.arrow_forward,
            color: MColors.primaryColor2,
          ),
        ],
      ),
    );
  }
}
