import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/const/approute.dart';

class CustomInkWell extends StatelessWidget {
  const CustomInkWell({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Get.toNamed(Approute.alldetails);
        },
        child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,

                  offset: Offset(0, 3), // Add a shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CachedNetworkImage(
                  imageUrl:
                      'https://th.bing.com/th/id/OIP.dcMfEMlntxil89Fb3Ywt3AHaE8?pid=ImgDet&rs=1',
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 5,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "City name",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Distance",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Icon(
                      Icons.directions,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 23,
                    ),
                    Text(
                      "Rating",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    ...List.generate(
                        3,
                        (index) => const Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.white,
                            ))
                  ],
                )
              ],
            )));
  }
}
