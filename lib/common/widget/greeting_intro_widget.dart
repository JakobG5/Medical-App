import 'package:flutter/material.dart';
import '../../utils/constants/colors.dart';
import '../styles/text_style.dart';

class GreetingIntroWidget extends StatelessWidget {
  final String headerText;
  final String description;
  const GreetingIntroWidget(
      {super.key, required this.headerText, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(headerText,
            style: MText.semiBold24.copyWith(color: MColors.primaryColor1)),
        const SizedBox(height: 4),
        Text(
          description,
          style: MText.light12,
        ),
      ],
    );
  }
}
