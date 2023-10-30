import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/controller/onbordingcontroller.dart';
import 'package:the_city/data/onbordinglist.dart';

class Customdotonbording extends StatelessWidget {
  const Customdotonbording({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnbordingcontrollerImp>(
        builder: ((controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  onbordinglist.length,
                  (index) => AnimatedContainer(
                    margin: const EdgeInsets.all(2),
                    duration: const Duration(
                      milliseconds: 900,
                    ),
                    height: 10,
                    width: controller.currentpage == index ? 25 : 10,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            )));
  }
}
