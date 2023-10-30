import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_city/const/theme.dart';

class DetailsPart1 extends StatelessWidget {
  const DetailsPart1({Key? key}) : super(key: key);

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
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      Text('9.115.5 KM', style: TextStyle(fontSize: 17)),
                    ],
                  ),
                  Consts.customSizedBox,
                  Row(
                    children: [
                      Icon(Icons.directions),
                      Text('9.115.5 KM', style: TextStyle(fontSize: 17)),
                    ],
                  ),
                  Consts.customSizedBox,
                  Row(
                    children: [
                      Icon(Icons.call),
                      Text('9.115.5 KM', style: TextStyle(fontSize: 17)),
                    ],
                  ),
                  Consts.customSizedBox,
                  Row(
                    children: [
                      Icon(Icons.web),
                      Text('9.115.5 KM', style: TextStyle(fontSize: 17)),
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
