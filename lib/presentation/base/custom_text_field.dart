import 'package:flutter/material.dart';
import 'package:ies/utill/color_resources.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    Key? key,
    required this.controller,
    this.hintText,
    this.enabled,
    this.prefixIconData,
    this.validator,
    this.initialValue,
    this.textType,
    this.obscureText,
    this.conformPasswordText,
    this.suffixIcon,
  }) : super(key: key);

  final TextEditingController controller;
  final String? hintText;
  final bool? enabled;
  final IconData? prefixIconData;
  final String? Function(String?)? validator;
  final String? initialValue;
  final bool? obscureText;
  final String? textType;
  final String? conformPasswordText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 7,
      ),
      child: TextFormField(
        validator: validator,
        // controller: controller,
        initialValue: initialValue,
        enabled: enabled ?? true,
        obscureText: obscureText ?? false,
        cursorColor: const Color(0xff5C58FF),
        style: const TextStyle(
          color: Color(0xff051D3F),
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
          // labelText: labelText,
          // labelStyle: const TextStyle(color: Colors.black54),
          hintStyle: const TextStyle(
            color: ColorResources.greyColor,
          ),
          border: InputBorder.none,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Icon(
              prefixIconData,
              color: const Color(0xffA1AFC3),
            ),
          ),
        ),
      ),
    );
  }
}
