// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:car_rantal_application/widgets/Widget%20Custom%20Button/custom_button.dart';
import 'package:car_rantal_application/widgets/Widget%20Custom%20TextFormFied/custom_text_form_field.dart';
import 'package:car_rantal_application/widgets/Widget%20Logo/logo.dart';
import 'package:car_rantal_application/widgets/widget%20login%20page/custom_divider_with_text.dart';
import 'package:car_rantal_application/widgets/widget%20login%20page/login_with_google.dart';
import 'package:car_rantal_application/widgets/widget%20login%20page/widget_text_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [ Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: 
          Column(
            children: [
              Center(
                child: 
                  Logo(
                    padding: EdgeInsets.only(top: 20),
                    width: width * 0.48,
                  )
              ),
        
              WidgetTextPage(),
              
              SizedBox(height: height * 0.07,),
              LoginWithGoogle(),
              
              SizedBox(height: height * 0.03,),
              CustomDividerWithText(), 
        
              SizedBox(height: height * 0.03,),
              CustomTextFormField(
                  hintText: 'Enter your email',
                  controller: email,
              ),
              
              SizedBox(height: height * 0.015,),
              CustomTextFormField(
                  hintText: 'Enter your password',
                  controller: password,
                  obscureText: true,
              ),
              
              SizedBox(height: height * 0.015,),
              InkWell(
                onTap: (){},
                child : Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: AppColors.textgrey3,
                      fontFamily: 'InriaSans',
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                )
              ),

              SizedBox(height: height * 0.015,),
              CustomButton(
                titleBtn: 'Login', 
                colorBtn: AppColors.buttonRed, 
                colorTitle: AppColors.textWhite,
                onPressed: (){}, 
              ),
              
              SizedBox(height: height * 0.015,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.textLowScreen1
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text("Sign Up",
                      style: TextStyle(
                        color: AppColors.textLowScreen2,
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                      )
                    ),
                  )
                ],
              )


            ],
          ),
        ),
        ]
      ),
    );
  }
}