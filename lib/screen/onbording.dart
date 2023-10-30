import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/const/approute.dart';
import 'package:the_city/const/theme.dart';
import 'package:the_city/controller/onbordingcontroller.dart';
import 'package:the_city/widget/onbording/custombuttun.dart';

import '../../widget/onbording/customdot.dart';
import '../../widget/onbording/slider.dart';

class Mybording extends StatelessWidget {
  const Mybording({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnbordingcontrollerImp());
    return Scaffold(
      backgroundColor: Consts.indigoColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Get.offAllNamed(Approute.theplacehome);
        },
        child: const Icon(
          Icons.skip_next,
          color: Consts.indigoColor,
        ),
      ),
      body: const Column(
        children: [
          Expanded(
            flex: 3,
            child: Customslideronbording(),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Customdotonbording(),
                SizedBox(
                  height: 50,
                ),
                Custombuttononbording(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
