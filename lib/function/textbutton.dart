import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/myController.dart';

final SettingsController settingsController = Get.put(SettingsController());
Widget buildTextButton(String label,
    {VoidCallback? onPressed, Color? textColor}) {
  return TextButton(
    onPressed: onPressed,
    child: Text(
      label,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color:
            settingsController.isDarkTheme.value ? Colors.white : Colors.black,
      ),
    ),
  );
}
