// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print

import 'package:car_rantal_application/screens/home_page.dart';
import 'package:car_rantal_application/screens/main_bottomNavigationBar.dart';
import 'package:car_rantal_application/screens/sign_up_page.dart';
import 'package:car_rantal_application/services/login_services.dart';
import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:car_rantal_application/widgets/Widget%20Custom%20Button/custom_button.dart';
import 'package:car_rantal_application/widgets/Widget%20Custom%20TextFormFied/custom_text_form_field.dart';
import 'package:car_rantal_application/widgets/Widget%20Logo/logo.dart';
import 'package:car_rantal_application/widgets/widget%20login%20page/custom_divider_with_text.dart';
import 'package:car_rantal_application/widgets/widget%20login%20page/login_with_google.dart';
import 'package:car_rantal_application/widgets/widget%20login%20page/widget_text_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginServices = LoginServices();

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
                WidgetTextPage(),
                SizedBox(
                  height: height * 0.08,
                ),
                LoginWithGoogle(),
                SizedBox(
                  height: height * 0.03,
                ),
                CustomDividerWithText(),
                SizedBox(
                  height: height * 0.03,
                ),
                CustomTextFormField(
                  hintText: 'Enter your email',
                  controller: loginServices.email,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'this field is empty please enter your Email';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                CustomTextFormField(
                  hintText: 'Enter your password',
                  controller: loginServices.password,
                  obscureText: true,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'this field is empty please enter Password';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                InkWell(
                    onTap: () async {
                      await loginServices.credential.sendPasswordResetEmail(email: loginServices.email.text);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Show Your Email')),
                      );
                    },
                    child: Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                            color: AppColors.textgrey3,
                            fontFamily: 'InriaSans',
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                SizedBox(
                  height: height * 0.015,
                ),
                CustomButton(
                    titleBtn: 'Login',
                    colorBtn: AppColors.buttonRed,
                    colorTitle: AppColors.textWhite,
                    fontBtn: 24,
                    onPressed: () {
                      if (_formState.currentState!.validate()) {
                        loginServices.signInWithEmailAndPassword(
                            context, _formState);
                      }
                    }),
                SizedBox(
                  height: height * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.textLowScreen1,
                        fontFamily: 'InriaSans',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('Sign Up');
                        print('### Navigate Login page to SignUp ###');
                      },
                      child: Text("Sign Up",
                          style: TextStyle(
                              color: AppColors.textLowScreen2,
                              fontSize: 16,
                              fontFamily: 'InriaSans',
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
