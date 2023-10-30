import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/const/theme.dart';
import 'package:the_city/controller/onbordingcontroller.dart';

class Custombuttononbording extends GetView<OnbordingcontrollerImp> {
  const Custombuttononbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: MaterialButton(
        onPressed: () {
          controller.next();
        },
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: const Text(
          "continue",
          style: TextStyle(
              color: Consts.indigoColor,
              fontWeight: FontWeight.bold,
              fontSize: 17),
        ),
      ),
    );
  }
}
