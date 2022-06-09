import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ies/utill/color_resources.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.enabled,
    this.prefixIconData,
    this.validator,
    this.initialValue,
    this.textType,
    this.obscureText,
    this.conformPasswordText,
    this.suffixIcon,
    this.width,
    this.showEnabledBorder = false,
    this.showBorder = false,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? hintText;
  final bool? enabled;
  final IconData? prefixIconData;
  final String? Function(String?)? validator;
  final String? initialValue;
  final bool? obscureText;
  final String? textType;
  final String? conformPasswordText;
  final Widget? suffixIcon;
  final double? width;
  final bool showEnabledBorder;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 200,
      child: TextFormField(
        validator: validator,
        // controller: controller,
        initialValue: initialValue,
        enabled: enabled ?? true,
        obscureText: obscureText ?? false,
        cursorColor: const Color(0xff5C58FF),
        style: const TextStyle(
          color: ColorResources.greyLightColor,
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,

        decoration: InputDecoration(
          border: showBorder
              ? const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    // width: 5.0,
                  ),
                )
              : InputBorder.none,
          enabledBorder: showEnabledBorder
              ? const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    // width: 5.0,
                  ),
                )
              : InputBorder.none,
          hintStyle: const TextStyle(
            color: ColorResources.greyColor,
          ),
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: Icon(
            prefixIconData,
            size: 17,
            color: ColorResources.greyColor,
          ),
        ),
      ),
    );
  }
}

class CustomTextField2 extends StatelessWidget {
  const CustomTextField2({
    Key? key,
    this.hintText,
    this.keyboardType,
  }) : super(key: key);
  final String? hintText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        keyboardType: keyboardType,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(
              color: Colors.blue,
              // width: 5.0,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(
              color: Colors.blue,
              // width: 5.0,
            ),
          ),
          hintStyle: const TextStyle(
            color: ColorResources.greyColor,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
