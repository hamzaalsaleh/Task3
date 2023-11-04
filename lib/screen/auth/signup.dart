import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/classes/handlingstatus.dart';
import 'package:the_city/const/approute.dart';
import 'package:the_city/const/theme.dart';
import 'package:the_city/controller/authcontroller/signup.dart';
import 'package:the_city/widget/auth/custombuttonauth.dart';
import 'package:the_city/widget/auth/customtextform.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});
  @override
  Widget build(BuildContext context) {
    SignUpController signUpController = Get.put(SignUpController());

    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Consts.indigoColor,
            onPressed: () {
              Get.offAllNamed(Approute.theplacehome);
            },
            child: Icon(Icons.arrow_back)),
        body: GetBuilder<SignUpController>(
          builder: (controller) => HandlingRequest(
            statuseRequest: signUpController.statuseRequest,
            widget: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(children: [
                Form(
                  key: signUpController.formstate,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      const Text("Sign Up",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
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
                          mycontroller: signUpController.email),
                      Container(height: 15),
                      const Text(
                        "Password",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(height: 15),
                      CustomTextForm(
                          obscureText: true,
                          validator: (val) {
                            if (val == "") {
                              return "can't be empty";
                            }
                          },
                          hinttext: "ُEnter Your Password",
                          mycontroller: signUpController.password),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
                CustomButtonAuth(
                    title: "SignUp",
                    onPressed: () {
                      signUpController.signup();
                    }),
                Container(height: 20),
                InkWell(
                  onTap: () {
                    Get.offAllNamed(Approute.login);
                  },
                  child: const Center(
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                        text: " Have An Account ? ",
                      ),
                      TextSpan(
                          text: "SignIn",
                          style: TextStyle(
                              color: Consts.indigoColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ])),
                  ),
                )
              ]),
            ),
          ),
        ));
  }
}
