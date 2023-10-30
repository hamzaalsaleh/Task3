import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/controller/authcontroller/signup.dart';

class FavoriteSign extends StatelessWidget {
  const FavoriteSign({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController controller = Get.put(SignUpController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                await controller.signout();
              },
              icon: Icon(Icons.exit_to_app_outlined))
        ],
      ),
    );
  }
}
