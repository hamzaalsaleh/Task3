import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/const/approute.dart';

class SuccessController extends GetxController {
  verifyemail() {
    FirebaseAuth.instance.currentUser!.sendEmailVerification();
    Get.defaultDialog(
        content: Text("We Send Link to your email please check out"));
  }

  gotologin() {
    Get.offAllNamed(Approute.login);
  }
}
