import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/classes/statusrequest.dart';
import 'package:the_city/const/approute.dart';
import 'package:the_city/function/handle.dart';

class SignUpController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  StatuseRequest statuseRequest = StatuseRequest.none;
  signup() async {
    if (formstate.currentState!.validate()) {
      statuseRequest = StatuseRequest.loading;
      update();
      try {
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text,
          password: password.text,
        );
        statuseRequest = handling(credential);
        if (statuseRequest == StatuseRequest.success) {
          Get.offAllNamed(Approute.successsignup);
          // Get.defaultDialog(
          //     content: Text(
          //         "Your account has been created successfully \n You must now confirm your account before logging in"),
          //     title: "Congratulation");
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          Get.snackbar("Attention", "The password provided is too weak");
          statuseRequest = StatuseRequest.failure;
        } else if (e.code == 'email-already-in-use') {
          Get.snackbar(
              "Attention", "The account already exists for that email");
          statuseRequest = StatuseRequest.failure;
        }
      } catch (e) {
        print(e);
      }
      update();
    }
  }

  signout() async {
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed(Approute.theplacehome);
  }

  @override
  void dispose() {
    signout();
    signup();
    super.dispose();
  }
}
