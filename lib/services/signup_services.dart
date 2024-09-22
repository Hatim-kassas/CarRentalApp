import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupServices {
  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  Future<void> signUp() async {
    if (password.text == confirmPassword.text) {
      await createUserWithEmailAndPassword();
    } else {
      print('Passwords do not match');
    }
  }

  Future createUserWithEmailAndPassword() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
