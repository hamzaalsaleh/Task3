import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/const/approute.dart';
import 'package:the_city/data/onbordinglist.dart';

import 'package:the_city/services/services.dart';

abstract class Onbordingcontroller extends GetxController {
  next();
  onpagechenged(int index);
}

class OnbordingcontrollerImp extends Onbordingcontroller {
  int currentpage = 0;

  late PageController pageController;
  MyServices myServices = Get.find();
  @override
  next() {
    currentpage++;
    if (currentpage > onbordinglist.length - 1) {
      myServices.sharedPreferences.setString("step", "1");
      Get.offAllNamed(Approute.theplacehome);
    } else {
      pageController.animateToPage(currentpage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onpagechenged(int index) {
    currentpage = index;

    update();
  }

  @override
  void onInit() {
    pageController = PageController();

    super.onInit();
  }
}
