import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/const/theme.dart';
import 'package:the_city/screen/fav.dart';
import 'package:the_city/screen/homepage.dart';
import 'package:the_city/screen/mymap.dart';
import 'package:the_city/screen/settings.dart';

import '../controller/myController.dart';

class Theplacehome extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());
  final SettingsController settingsController = Get.put(SettingsController());
  final FavoritesController favoritesController =
      Get.put(FavoritesController());

  Theplacehome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: Get.find<HomeController>().selectedIndex.value,
          children: [
            const HomePage(),
            const MapPage(),
            FavoritesPage(),
            SettingsPage(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => CurvedNavigationBar(
          height: 60,
          backgroundColor: Colors.white,
          color: settingsController.isDarkTheme.value
              ? Colors.black
              : Consts.indigoColor,
          animationDuration: const Duration(milliseconds: 500),
          index: homeController.selectedIndex.value,
          items: [
            Icon(Icons.home,
                size: 30,
                color: homeController.selectedIndex.value == 0
                    ? Colors.white
                    : Colors.grey.shade300),
            Icon(Icons.map,
                size: 30,
                color: homeController.selectedIndex.value == 0
                    ? Colors.white
                    : Colors.grey.shade300),
            Icon(Icons.favorite,
                size: 30,
                color: homeController.selectedIndex.value == 0
                    ? Colors.white
                    : Colors.grey.shade300),
            Icon(Icons.settings,
                size: 30,
                color: homeController.selectedIndex.value == 0
                    ? Colors.white
                    : Colors.grey.shade300),
          ],
          onTap: (index) {
            homeController.selectedIndex.value = index;
          },
        ),
      ),
    );
  }
}
