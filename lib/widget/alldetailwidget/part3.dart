import 'package:flutter/material.dart';
import 'package:the_city/const/theme.dart';

class DetailsPart3 extends StatelessWidget {
  const DetailsPart3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Card(
          elevation: 5,
          child: Container(
            height: 225,
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
                    'Description',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Consts.customSizedBox,
                  Consts.di,
                  Text(
                    'this is descriptions this is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptionsthis is descriptions ',
                    style: TextStyle(),
                    maxLines: 8,
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
