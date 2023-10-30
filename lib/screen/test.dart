import 'package:flutter/material.dart';
import 'package:the_city/widget/auth/customtextform.dart';

class Test extends StatelessWidget {
  Test({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
        body: Scaffold(
      body: Center(
          child: CustomTextForm(
        obscureText: false,
        validator: (c) {
          if (c == "") {
            return "false";
          }
        },
        sufIcon: Icon(
          Icons.abc,
          color: Colors.amber,
        ),
        hinttext: "test",
        mycontroller: controller,
      )),
    ));
  }
}
