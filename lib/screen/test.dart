import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      body: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) => Icon(
            Icons.home,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
    ));
  }
}
//  color: homeController.selectedIndex.value == 0
//                     ? Colors.white
//                     : Colors.grey.shade300