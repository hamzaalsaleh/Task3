import 'package:flutter/material.dart';
import 'package:the_city/const/theme.dart';

Widget buildCheckboxRow(
    String label, bool value, void Function(bool?) onChanged) {
  return Row(
    children: [
      Text(
        label,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      Spacer(),
      Checkbox(
        activeColor: Consts.indigoColor,
        value: value,
        onChanged: onChanged,
      ),
    ],
  );
}
