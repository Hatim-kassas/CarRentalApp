// ignore_for_file: prefer_const_constructors

import 'package:car_rantal_application/utils/app_colors.dart';

import 'package:flutter/material.dart';

class PaymentTextformfield extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final Icon? icon;

  const PaymentTextformfield({
    super.key,
    required this.hintText,
    required this.controller,
    this.validator,
    this.obscureText,
    this.icon,
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
              fontSize: 15,
              fontFamily: 'InriaSans'),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: const Color.fromARGB(75, 102, 102, 102), width: 1),
              borderRadius: BorderRadius.circular(6)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: const Color.fromARGB(255, 26, 26, 26), width: 1),
              borderRadius: BorderRadius.circular(6)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(6)),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: const Color.fromARGB(75, 102, 102, 102), width: 1),
              borderRadius: BorderRadius.circular(6)),
          contentPadding: EdgeInsets.symmetric(horizontal: 12),
          suffixIcon: icon,
        ));
  }
}
