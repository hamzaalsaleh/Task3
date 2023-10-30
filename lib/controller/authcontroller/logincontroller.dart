import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/const/approute.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  login() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text, password: password.text);
      Get.offAllNamed(Approute.theplacehome);
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Attention !", "Wrong email or password");
      if (e.code == 'user-not-found') {
      } else if (e.code == 'wrong-password') {
        Get.snackbar("Attention !", "wrong password");
      }
    }
  }

  @override
  void dispose() {
    login();
    super.dispose();
  }
}
