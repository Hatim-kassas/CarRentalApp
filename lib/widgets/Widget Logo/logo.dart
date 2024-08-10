import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final double width ;
  const Logo({super.key, required this.padding, required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: padding,
              child: Image.asset('assets/img/Logo.png',
                width: width,
              ),
            );
  }
}