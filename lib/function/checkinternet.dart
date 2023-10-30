import 'dart:io';
import 'package:flutter/material.dart';
import 'package:the_city/classes/statusrequest.dart';

cheakInternet() async {
  try {
    var result = await InternetAddress.lookup("google.com");
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
  } on SocketException catch (_) {
    print("no0");
    return StatuseRequest.offline;
  }
}
