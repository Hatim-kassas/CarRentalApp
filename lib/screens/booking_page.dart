// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(child: Text('This Page is Under Development.', style: TextStyle(color: Colors.black, fontSize: 22),))
          ],
        ),
      ),
    );
  }
}