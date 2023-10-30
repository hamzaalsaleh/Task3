import 'package:flutter/material.dart';
import 'package:the_city/const/theme.dart';

Widget buildSwitchRow(
    String label, bool value, void Function(bool?) onChanged) {
  return Row(
    children: [
      Text(
        label,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      const Spacer(),
      Switch(
        activeColor: Consts.indigoColor,
        value: value,
        onChanged: onChanged,
      ),
    ],
  );
}
