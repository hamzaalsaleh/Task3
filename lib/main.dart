import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:the_city/routes.dart';
import 'package:the_city/services/services.dart';

import 'controller/myController.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final SettingsController settingsController = Get.put(SettingsController());
    settingsController.initializeSettings();
    return Obx(() => GetMaterialApp(
          theme: settingsController.isDarkTheme.value
              ? ThemeData.dark().copyWith(
                  appBarTheme: AppBarTheme(
                    color: Colors.black,
                  ),
                )
              : ThemeData.light().copyWith(
                  appBarTheme: AppBarTheme(
                  color: Colors.indigo,
                )),
          getPages: routes,
          debugShowCheckedModeBanner: false,
        ));
    ;
  }
}
