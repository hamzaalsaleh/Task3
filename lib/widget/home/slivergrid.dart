import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/const/theme.dart';
import 'package:the_city/screen/alldetails.dart';

class Sliverhome extends StatelessWidget {
  const Sliverhome({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Material(
              shadowColor: Consts.indigoColor,
              elevation: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => Alldetails());
                    },
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                                'https://th.bing.com/th/id/R.8286355653003a2ad9156b81288e7c4b?rik=gNpCGL65CUqN2Q&pid=ImgRaw&r=0',
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 5, right: 5, top: 15),
                            child: Text('Los Angeles'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: 12,
      ),
    );
  }
}
