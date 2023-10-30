import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:the_city/const/theme.dart';

import '../../controller/myController.dart';

class Sport extends StatelessWidget {
  const Sport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SettingsController settingsController = Get.put(SettingsController());

    return Scaffold(
      backgroundColor: settingsController.isDarkTheme.value
          ? Consts.backgroundDark
          : Colors.grey.shade300,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
        ],
        title: Text('Sport'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
              ),
              itemCount: 20,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Material(
                      shadowColor: Consts.indigoColor,
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Container(
                          height: 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CachedNetworkImage(
                                imageUrl:
                                    'https://dusun-bambu-family-leisure-park-villa-lembang.albooked.com/data/Photos/OriginalPhoto/9227/922798/922798147/Dusun-Bambu-Resort-Bandung-Exterior.JPEG',
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Text(
                                'Place Name', // Replace with your place name
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Data', // Replace with your location
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
