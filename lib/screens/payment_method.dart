// ignore_for_file: prefer_const_constructors

import 'package:car_rantal_application/models/card.dart';
import 'package:car_rantal_application/screens/confirmation.dart';
import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:car_rantal_application/widgets/Widget%20Custom%20Button/custom_button.dart';
import 'package:car_rantal_application/widgets/Widget%20Payment%20Method/dropdownButton_countries%20.dart';
import 'package:car_rantal_application/widgets/Widget%20Payment%20Method/payment_textformfield.dart';
import 'package:car_rantal_application/widgets/Widget%20Payment%20Method/section_date.dart';
import 'package:car_rantal_application/widgets/Widget%20Payment%20Method/title_review_car.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PaymentMethod extends StatefulWidget {
  final Car car;
  const PaymentMethod({super.key, required this.car});

  @override
  State<PaymentMethod> createState() => PaymentMethodState();
}

class PaymentMethodState extends State<PaymentMethod> {
  TextEditingController email = TextEditingController();
  TextEditingController numberCard = TextEditingController();
  TextEditingController dateCard = TextEditingController();
  TextEditingController cvcCard = TextEditingController();
  TextEditingController nameBank = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 22),
              child: IconButton(
                icon: Icon(
                  Iconsax.logout,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Center(
                      child: Text(
                    'Payment Method',
                    style: TextStyle(fontFamily: 'InriaSans', fontSize: 22),
                  )),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.865,
                width: width,
                decoration: BoxDecoration(
                    color: AppColors.backgroundColorBlue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                  child: Column(
                    children: [
                      TitleReviewCar(car: widget.car),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      StartEndDateWidget(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/img/location.png',
                            width: width * 0.08,
                            height: height * 0.08,
                          ),
                          Text(
                            'Location : ',
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontFamily: 'InriaSans',
                                fontSize: 17),
                          ),
                          Text(
                            'Tangier, Ibiria imam muslim',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'InriaSans',
                                fontSize: 17),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Section Payment From Cart
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.615,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'InriaSans',
                              fontSize: 15)),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      PaymentTextformfield(
                        hintText: 'Enter Your Email',
                        controller: email,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text('Card Information',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'InriaSans',
                              fontSize: 15)),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      PaymentTextformfield(
                        hintText: '0000 0000 0000 0000',
                        controller: numberCard,
                        icon: Icon(Icons.credit_card,),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: PaymentTextformfield(
                              hintText: 'MM/YY',
                              controller: dateCard,
                            ),
                          ),
                          SizedBox(width: width * 0.03),
                          Expanded(
                            child: PaymentTextformfield(
                                hintText: 'CVC',
                                controller: cvcCard,
                                obscureText: true
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text('Name Bank',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'InriaSans',
                              fontSize: 15)),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      PaymentTextformfield(
                        hintText: 'Name of Card (Ex. Stripe)',
                        controller: nameBank,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CountryDropdown(),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CustomButton(
                          titleBtn: 'Pay 3177.00 DH',
                          colorBtn: AppColors.btnBlue,
                          colorTitle: Colors.white,
                          fontBtn: 18,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Confirmation(),
                                        )
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
