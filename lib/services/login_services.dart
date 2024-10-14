// ignore_for_file: use_build_context_synchronously, unused_local_variable, no_leading_underscores_for_local_identifiers

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginServices {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final FirebaseAuth credential = FirebaseAuth.instance;

  Future signInWithEmailAndPassword(BuildContext context, GlobalKey<FormState> _formState) async {
    if (_formState.currentState?.validate() ?? false) {
      try {
        await credential.signInWithEmailAndPassword(email: email.text, password: password.text);
        User? user = FirebaseAuth.instance.currentUser;
        if(user != null && user.emailVerified){
          Navigator.of(context).pushNamedAndRemoveUntil(
            'main', (Route<dynamic> route) =>false, // This removes all previous routes from the stack
            );
        }
        else {
          // If the email is not verified, show a SnackBar
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Please verify your email before logging in.')),
          );
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
          return 'No user found for that email.';
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    }
  }
}
