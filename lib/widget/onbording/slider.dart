import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/const/theme.dart';
import 'package:the_city/controller/onbordingcontroller.dart';
import 'package:the_city/data/onbordinglist.dart';

class Customslideronbording extends GetView<OnbordingcontrollerImp> {
  const Customslideronbording({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onpagechenged(value);
        },
        itemCount: onbordinglist.length,
        itemBuilder: (context, i) => Column(
              children: [
                const SizedBox(height: 50),
                Image.asset(
                  onbordinglist[i].image!,
                  height: 300,
                  width: 250,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 50),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  child: Text(
                    textAlign: TextAlign.center,
                    onbordinglist[i].body!,
                    style: TextStyle(
                        height: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                )
              ],
            ));
  }
}
