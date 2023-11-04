import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:the_city/classes/statusrequest.dart';
import 'package:the_city/const/approute.dart';
import 'package:the_city/function/handle.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  StatuseRequest statuseRequest = StatuseRequest.none;
  GlobalKey<FormState> formstate = GlobalKey();
  login() async {
    if (formstate.currentState!.validate()) {
      try {
        statuseRequest = StatuseRequest.loading;
        update();
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: email.text, password: password.text);
        statuseRequest = handling(credential);
        if (statuseRequest == StatuseRequest.success) {
          if (FirebaseAuth.instance.currentUser!.emailVerified) {
            Get.offAllNamed(Approute.theplacehome);
          } else {
            Get.defaultDialog(title: "Verify your email");
            statuseRequest = StatuseRequest.failure;
            update();
          }
        }
      } on FirebaseAuthException catch (e) {
        statuseRequest = StatuseRequest.failure;
        Get.snackbar("Attention !", "wrong password or email");
        if (e.code == 'user-not-found') {
        } else if (e.code == 'wrong-password') {}
        update();
      }
    }
  }

  Future signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      return;
    }
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  resetpass() async {
    if (email.text == "") {
      Get.defaultDialog(
          content: Text("please enter your email"), title: "Attention");
    }
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
    } catch (e) {
      print("eeeeeeeeeeeeeeeeeeeeeee");
    }
  }

  @override
  void dispose() {
    password.dispose();
    email.dispose();
    super.dispose();
  }
}
