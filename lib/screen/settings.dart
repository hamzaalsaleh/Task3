import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:the_city/const/theme.dart';
import 'package:the_city/function/checkbox.dart';
import 'package:the_city/function/sectiontitle.dart';
import 'package:the_city/function/switch.dart';
import 'package:the_city/function/textbutton.dart';

import '../controller/myController.dart';

class SettingsPage extends StatelessWidget {
  final SettingsController settingsController = Get.put(SettingsController());

  SettingsPage({super.key});

  void clearImageCache() {
    imageCache.clear();
  }

  @override
  Widget build(BuildContext context) {
    final SettingsController settingsController = Get.put(SettingsController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: settingsController.isDarkTheme.value
            ? Consts.indigoColor
            : Consts.indigoColor,
        title: const Text(
          'Settings',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              buildSectionTitle('Notifications'),
              Obx(() => buildSwitchRow(
                  'Push Notifications',
                  settingsController.pushNotifications.value,
                  (value) => settingsController.pushNotifications.value =
                      value ?? false)),
              Consts.di,
              Consts.customSizedBox,
              buildSectionTitle('Ringtone'),
              const Text('Default',
                  style: TextStyle(fontSize: 15, color: Colors.grey)),
              Consts.customSizedBox,
              Consts.di,
              Consts.customSizedBox,
              Obx(() => buildCheckboxRow(
                  'Vibrate',
                  settingsController.vibrate.value,
                  (value) =>
                      settingsController.vibrate.value = value ?? false)),
              buildSectionTitle('Display'),
              Consts.customSizedBox,
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            'Clear Image Cache',
                            style: TextStyle(
                              color: settingsController.isDarkTheme.value
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          content: const Text(
                              'Are you sure you want to clear the image cache?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  color: settingsController.isDarkTheme.value
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                clearImageCache();
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'Clear',
                                style: TextStyle(
                                  color: settingsController.isDarkTheme.value
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text(
                    'Clear Image Cache',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: settingsController.isDarkTheme.value
                            ? Colors.white
                            : Colors.black),
                  ),
                ),
              ),
              Consts.customSizedBox,
              Consts.di,
              Obx(() => buildSwitchRow(
                  'Dark Mode',
                  settingsController.isDarkTheme.value,
                  (value) => settingsController.toggleDarkMode())),
              buildSectionTitle('Others'),
              Consts.customSizedBox,
              const Text('Developed By',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              const Text('Dream Space',
                  style: TextStyle(fontSize: 15, color: Colors.grey)),
              Consts.customSizedBox,
              Consts.di,
              buildTextButton('Copyright'),
              Consts.customSizedBox,
              Consts.di,
              buildTextButton('Term & Policies'),
              Consts.customSizedBox,
              buildTextButton('More Apps'),
              Consts.customSizedBox,
              buildTextButton('Rate'),
              Consts.customSizedBox,
              buildTextButton('About'),
            ],
          ),
        ),
      ),
    );
  }
}
