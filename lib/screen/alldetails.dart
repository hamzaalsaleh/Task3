import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:the_city/const/theme.dart';
import 'package:the_city/widget/alldetailwidget/part1.dart';
import 'package:the_city/widget/alldetailwidget/part2.dart';
import 'package:the_city/widget/alldetailwidget/part3.dart';
import 'package:the_city/widget/alldetailwidget/part4.dart';

import '../../controller/myController.dart';

class Alldetails extends StatelessWidget {
  final AllDetailsController controller = Get.put(AllDetailsController());
  final SettingsController settingsController = Get.put(SettingsController());

  Alldetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: settingsController.isDarkTheme.value
          ? Consts.backgroundDark
          : Colors.grey.shade300,
      body: CustomScrollView(
        controller: controller.scrollController,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: settingsController.isDarkTheme.value
                ? Colors.black
                : Consts.indigoColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('All Places'),
              background: Image.network(
                'https://th.bing.com/th/id/OIP.dcMfEMlntxil89Fb3Ywt3AHaE8?pid=ImgDet&rs=1',
                fit: BoxFit.cover,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, size: 25, color: Colors.grey.shade300),
              ),
              IconButton(
                onPressed: () {},
                icon:
                    Icon(Icons.refresh, size: 25, color: Colors.grey.shade300),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu_open_rounded,
                    size: 25, color: Colors.grey.shade300),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.share, size: 25, color: Colors.grey.shade300),
              ),
            ],
          ),
          DetailsPart1(),
          DetailsPart2(),
          DetailsPart3(),
          DetailsPart4(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Obx(() {
        if (controller.showFab.value) {
          return FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.favorite),
            backgroundColor: Consts.indigoColor,
          );
        }
        return SizedBox();
      }),
    );
  }
}
