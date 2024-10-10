// ignore_for_file: use_build_context_synchronously, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginServices {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future signInWithEmailAndPassword(BuildContext context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text, password: password.text);
      Navigator.of(context).pushNamedAndRemoveUntil(
                      'main', // Route name
                      (Route<dynamic> route) => false, // This removes all previous routes from the stack
                    );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
