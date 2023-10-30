import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:the_city/const/theme.dart';

import '../../controller/myController.dart';

class DetailsPart4 extends StatelessWidget {
  final SettingsController settingsController = Get.put(SettingsController());
  final AllDetailsController controller = Get.put(AllDetailsController());

  DetailsPart4({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Card(
          elevation: 5,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    'Map',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: FlutterMap(
                      children: [
                        TileLayer(
                          urlTemplate:
                              "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                          subdomains: ['a', 'b', 'c'],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              width: 45.0,
                              height: 45.0,
                              point: controller.initialPosition,
                              builder: (ctx) => Container(
                                child: Icon(
                                  Icons.location_on,
                                  color: Colors.blue,
                                  size: 45.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      mapController: controller.mapController,
                      options: MapOptions(
                        center: controller.initialPosition,
                        zoom: 15.0,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text('View',
                          style: TextStyle(color: Consts.indigoColor)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Navigate',
                          style: TextStyle(color: Consts.indigoColor)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
