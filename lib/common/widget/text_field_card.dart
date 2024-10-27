import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/common/styles/text_style.dart';
import 'package:medical_app/utils/constants/space.dart';
import '../../utils/constants/colors.dart';
import '../../utils/device_util/utils.dart';

class TextFieldCard extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType inputType;
  final String? Function(String?)? validator;
  final RxBool? isObscure;
  final String label;
  final IconData? suffixTrue;
  final IconData? suffixFalse;
  final String headerText;
  final Function()? toogleVisibility;
  final Function()? forgetBtn;

  const TextFieldCard({
    super.key,
    required this.controller,
    required this.inputType,
    this.validator,
    this.isObscure,
    required this.label,
    this.suffixTrue,
    this.suffixFalse,
    required this.headerText,
    this.toogleVisibility,
    this.forgetBtn,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 89,
      width: MUtils.getScreenWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(headerText),
          const SizedBox(height: MSpace.space14),
          Obx(() => TextFormField(
                controller: controller,
                keyboardType: inputType,
                validator: validator,
                obscureText: isObscure!.value,
                maxLines: 1,
                decoration: InputDecoration(
                  filled: true,
                  suffixIcon: isObscure!.value
                      ? GestureDetector(
                          onTap: toogleVisibility, child: Icon(suffixTrue))
                      : GestureDetector(
                          onTap: toogleVisibility, child: Icon(suffixFalse)),
                  hintText: label,
                  hintStyle: MText.regular20,
                  fillColor: MColors.primaryColor2,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 0,
                      )),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: const BorderSide(
                      color: MColors.primaryColor1,
                      width: 1,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: const BorderSide(
                      color: Colors.redAccent,
                      width: 2,
                    ),
                  ),
                ),
              )),
        
         
        ],
      ),
    );
  }
}
