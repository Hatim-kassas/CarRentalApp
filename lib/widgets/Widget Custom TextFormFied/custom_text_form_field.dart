// ignore_for_file: prefer_const_constructors

import 'package:car_rantal_application/utils/app_colors.dart';

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool? obscureText;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.validator,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText ?? false,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
                color: AppColors.inputText,
                fontSize: 17,
                fontFamily: 'InriaSans'),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.enabledBorder, width: 2),
                borderRadius: BorderRadius.circular(22)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.focuseBorder, width: 2),
                borderRadius: BorderRadius.circular(22)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(22)),
            border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.focuseBorder, width: 2),
                  borderRadius: BorderRadius.circular(22)
                  ),
            )
          );

  }
}
