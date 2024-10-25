import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../styles/text_style.dart';

class CustomMainButton extends StatelessWidget {
  final String btnText;
  final VoidCallback funciton;
  final bool isBold;
  const CustomMainButton(
      {super.key,
      required this.btnText,
      required this.funciton,
      required this.isBold});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isBold ? MColors.primaryColor1 : MColors.primaryColor2,
        minimumSize: const Size(207, 45),
        textStyle: MText.medium24.copyWith(color: MColors.white),
        shape: const StadiumBorder(),
      ),
      onPressed: funciton,
      child: Text(
        btnText,
        style: isBold
            ? MText.medium24.copyWith(color: MColors.white)
            : MText.medium24.copyWith(color: MColors.primaryColor1),
      ),
    );
  }
}
