import 'package:car_rantal_application/utils/app_colors.dart';

import 'package:flutter/material.dart';

class LoginWithGoogle extends StatelessWidget {
  const LoginWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: height * 0.068,
                      width: width * 0.87,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: AppColors.enabledBorder
                        ),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/img/logoGoogle.png',
                            width: width * 0.11,
                          ),
                          Text(
                            'Continue with Google',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
  }
}