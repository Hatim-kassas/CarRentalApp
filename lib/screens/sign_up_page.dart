// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:car_rantal_application/services/signup_services.dart';
import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:car_rantal_application/widgets/Widget%20Custom%20Button/custom_button.dart';
import 'package:car_rantal_application/widgets/Widget%20Custom%20TextFormFied/custom_text_form_field.dart';
import 'package:car_rantal_application/widgets/Widget%20Logo/logo.dart';
import 'package:car_rantal_application/widgets/widget%20SignUp%20Page/dropdown_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final signupServices = SignupServices();

  GlobalKey<FormState> _formState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Form(
            key: _formState,
            child: Column(
              children: [
                Center(
                    child: Logo(
                  padding: EdgeInsets.only(top: 20),
                  width: width * 0.48,
                )),
                SizedBox(
                  height: height * 0.06,
                ),
                Text(
                  "Create your Swift Car account to access fast and easy \ncar rentals. Simply enter your details to start booking from \nour wide range of vehicles. \n Enjoy a seamless rental experience with instant \nconfirmation and 24/7 support.",
                  style: TextStyle(
                      color: AppColors.textgrey2,
                      fontSize: 14,
                      fontFamily: 'InriaSans',
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                CustomTextFormField(
                  hintText: 'Enter your Full Name',
                  controller: signupServices.fullname,
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                CustomTextFormField(
                  hintText: 'Enter your email',
                  controller: signupServices.email,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'Email is Empty';
                    }
                    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
                    RegExp regExp = RegExp(pattern);
                    if (!regExp.hasMatch(val)){
                      return 'Enter a valid email';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                CustomTextFormField(
                  hintText: 'Enter your password',
                  controller: signupServices.password,
                  obscureText: true,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'Password is Empty';
                    } else if (val.length <= 5) {
                      return 'Password is Weak';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                CustomTextFormField(
                  hintText: 'Enter Confirm password',
                  controller: signupServices.confirmPassword,
                  obscureText: true,
                  validator: (val) {
                    if (val != signupServices.password.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                DropdownMenuWidget(),
                SizedBox(
                  height: height * 0.015,
                ),
                CustomButton(
                  titleBtn: 'Sign Up',
                  colorBtn: AppColors.buttonRed,
                  colorTitle: AppColors.textWhite,
                  onPressed: () {
                    if (_formState.currentState!.validate()) {
                      signupServices.signUp(context);
                    }
                  },
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I have an acconut? ",
                      style: TextStyle(
                          fontSize: 16, color: AppColors.textLowScreen1),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('Login');
                        print('### Navigate SignUp page to Login ###');
                      },
                      child: Text("Login",
                          style: TextStyle(
                              color: AppColors.textLowScreen2,
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
