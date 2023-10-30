import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_city/const/theme.dart';

class DetailsPart2 extends StatelessWidget {
  const DetailsPart2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Card(
          elevation: 5,
          child: Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Photos',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Consts.customSizedBox,
                  Row(
                    children: [
                      Container(
                        height: 80,
                        child: Image(
                          fit: BoxFit.cover,
                          width: 100,
                          height: 80,
                          image: NetworkImage(
                            'https://th.bing.com/th/id/OIP.dcMfEMlntxil89Fb3Ywt3AHaE8?pid=ImgDet&rs=1',
                          ),
                        ),
                      ),
                      Consts.customSizedBox,
                      Container(
                        height: 80,
                        child: Image(
                          fit: BoxFit.cover,
                          width: 100,
                          height: 80,
                          image: NetworkImage(
                            'https://th.bing.com/th/id/OIP.dcMfEMlntxil89Fb3Ywt3AHaE8?pid=ImgDet&rs=1',
                          ),
                        ),
                      ),
                      Consts.customSizedBox,
                      Container(
                        height: 80,
                        child: Image(
                          fit: BoxFit.cover,
                          width: 100,
                          height: 80,
                          image: NetworkImage(
                            'https://th.bing.com/th/id/OIP.dcMfEMlntxil89Fb3Ywt3AHaE8?pid=ImgDet&rs=1',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
