import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/classes/handlingstatus.dart';

import 'package:the_city/const/approute.dart';
import 'package:the_city/const/theme.dart';

import 'package:the_city/controller/authcontroller/logincontroller.dart';
import 'package:the_city/widget/auth/custombuttonauth.dart';
import 'package:the_city/widget/auth/customtextform.dart';

class LogDetails extends StatelessWidget {
  const LogDetails({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());

    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Consts.indigoColor,
            onPressed: () {
              Get.offAllNamed(Approute.theplacehome);
            },
            child: Icon(Icons.arrow_back)),
        body: GetBuilder<LoginController>(
          builder: (controller) => HandlingRequest(
            statuseRequest: loginController.statuseRequest,
            widget: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(children: [
                Form(
                  key: controller.formstate,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      const Text("Login",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      const Text("Login To Continue Using The App",
                          style: TextStyle(color: Colors.grey)),
                      const SizedBox(height: 20),
                      const Text(
                        "Email",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Container(height: 15),
                      CustomTextForm(
                          validator: (val) {
                            if (val == "") {
                              return "can't be empty";
                            }
                          },
                          obscureText: false,
                          hinttext: "ُEnter Your Email",
                          mycontroller: loginController.email),
                      Container(height: 15),
                      const Text(
                        "Password",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Container(height: 15),
                      CustomTextForm(
                          obscureText: true,
                          validator: (val) {
                            if (val == "") {
                              return "can't be empty";
                            }
                          },
                          hinttext: "ُEnter Your Password",
                          mycontroller: loginController.password),
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 20),
                        alignment: Alignment.topRight,
                        child: InkWell(
                            onTap: () {
                              loginController.resetpass();
                            },
                            child: const Text(
                              "Forgot Password ?",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                CustomButtonAuth(
                    title: "login",
                    onPressed: () {
                      loginController.login();
                    }),
                SizedBox(height: 10),
                CustomButtonAuth(
                    title: "login with google",
                    onPressed: () {
                      loginController.signInWithGoogle();
                    }),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Get.offAllNamed(Approute.signup);
                  },
                  child: const Center(
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                        text: "Don't Have An Account ? ",
                      ),
                      TextSpan(
                          text: "Signup",
                          style: TextStyle(
                              color: Consts.indigoColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ])),
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
