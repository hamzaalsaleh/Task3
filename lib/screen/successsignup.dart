import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/const/imageurl.dart';
import 'package:the_city/const/theme.dart';
import 'package:the_city/controller/authcontroller/successignup.dart';

class SuccessSignup extends GetView<SuccessController> {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessController successController = Get.put(SuccessController());
    return Scaffold(
      backgroundColor: Consts.indigoColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(Assetimage.celebrationamico)),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: MaterialButton(
              onPressed: () {
                successController.verifyemail();
              },
              child: Text(
                "Verify Your Email To Login",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: MaterialButton(
              onPressed: () {
                successController.gotologin();
              },
              child: Text(
                "Go To Login",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
