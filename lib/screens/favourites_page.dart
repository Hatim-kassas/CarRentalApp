// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
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