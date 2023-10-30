import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_city/services/services.dart';

class HomeController extends GetxController {
  final RxInt selectedIndex = 0.obs;
}

class SettingsController extends GetxController {
  final RxBool pushNotifications = false.obs;
  final RxBool vibrate = false.obs;
  final RxBool isDarkTheme = false.obs;

  void saveSettingsToSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('darkMode', isDarkTheme.value);
  }

  // Load the settings from SharedPreferences
  Future<void> loadSettingsFromSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    isDarkTheme.value = prefs.getBool('darkMode') ?? false;
  }

  void toggleDarkMode() async {
    isDarkTheme.value = !isDarkTheme.value;
    saveSettingsToSharedPreferences();
  }

  Future<void> initializeSettings() async {
    await loadSettingsFromSharedPreferences();
  }
}

class FavoritesController extends GetxController {}

class AllDetailsController extends GetxController {
  final MapController mapController = MapController();
  final LatLng initialPosition = LatLng(37.7749, -122.4194);
  final RxBool showFab = false.obs;
  final ScrollController scrollController = ScrollController();
  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (!showFab.value && scrollController.offset > 100) {
      showFab.value = true;
    } else if (showFab.value && scrollController.offset <= 100) {
      showFab.value = false;
    }
  }
}
