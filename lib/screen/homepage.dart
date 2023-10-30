import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/const/theme.dart';
import 'package:the_city/function/showmodelbottomsheet.dart';

import 'package:the_city/widget/customdrawer.dart';
import 'package:the_city/widget/home/custominkwell.dart';

import '../controller/myController.dart';

import 'package:cached_network_image/cached_network_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final SettingsController settingsController = Get.put(SettingsController());

    return Scaffold(
      backgroundColor: settingsController.isDarkTheme.value
          ? Consts.backgroundDark
          : Colors.blueGrey,
      drawer: MyCustomDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(
                imageUrl:
                    'https://th.bing.com/th/id/OIP.dcMfEMlntxil89Fb3Ywt3AHaE8?pid=ImgDet&rs=1',
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                fit: BoxFit.cover,
              ),
            ),
            elevation: 5,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(5),
              child: AppBar(
                backgroundColor: Colors.transparent,
                leading: const Icon(
                  Icons.search,
                  size: 25,
                ),
                title: const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.white, fontSize: 25),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  showMenuabb(context);
                },
                icon: Icon(Icons.menu_open_rounded,
                    size: 25, color: Colors.grey.shade300),
              ),
            ],
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 220),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.all(10),
                  child: CustomInkWell(),
                );
              },
              childCount: 12,
            ),
          ),
        ],
      ),
    );
  }
}
