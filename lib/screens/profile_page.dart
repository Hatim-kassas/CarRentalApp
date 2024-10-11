// ignore_for_file: prefer_const_constructors

import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:car_rantal_application/widgets/Widget%20Profile%20Page/header_profile.dart';
import 'package:car_rantal_application/widgets/Widget%20Profile%20Page/main_profile.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Column(
      children: [
        HeaderProfile(),
        SizedBox(
          height: height * 0.06,
        ),
        MainProfile(
          icon: Icon(Iconsax.copy_success, size: 30),
          text: 'Bookings',
          onPress: () {},
        ),
        MainProfile(
          icon: Icon(Iconsax.wallet_1, size: 30),
          text: 'My Wallet',
          onPress: () {},
        ),
        MainProfile(
          icon: Icon(Iconsax.heart, size: 30),
          text: 'Wish List',
          onPress: () {},
        ),
        MainProfile(
          icon: Icon(Iconsax.message, size: 30),
          text: 'FAQs',
          onPress: () {},
        ),
        MainProfile(
          icon: Icon(Iconsax.headphone5, size: 30),
          text: 'Help and Support',
          onPress: () {},
        ),
        MainProfile(
          icon: Icon(Iconsax.setting_2, size: 30),
          text: 'Settings',
          onPress: () {},
        ),
        MainProfile(
          icon: Icon(Iconsax.logout_14, size: 30),
          text: 'Logout',
          onPress: () {},
        ),
      ],
    ));
  }
}
