import 'package:flutter/material.dart';
import 'package:the_city/const/theme.dart';

Widget buildSectionTitle(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: Consts.indigoColor,
    ),
  );
}
