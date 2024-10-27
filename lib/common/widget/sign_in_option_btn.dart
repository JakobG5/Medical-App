import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class SignInOptionButton extends StatelessWidget {
  final String imagePath;
  final Function()? function;
  const SignInOptionButton({super.key, required this.imagePath, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: MColors.primaryColor2),
        child: Center(
          child: Image.asset(
            imagePath,
            // color: MColors.primaryColor1,
            height: 18,
            width: 18,
          ),
        ),
      ),
    );
  }
}
