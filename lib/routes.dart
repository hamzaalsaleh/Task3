import 'package:get/get.dart';
import 'package:the_city/middileware/middleware.dart';
import 'package:the_city/screen/alldetails.dart';

import 'package:the_city/screen/auth/login.dart';
import 'package:the_city/screen/auth/signup.dart';
import 'package:the_city/screen/favoritesing.dart';
import 'package:the_city/screen/onbording.dart';
import 'package:the_city/screen/test.dart';
import 'package:the_city/screen/theplacehome.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Mybording(), middlewares: [Mymiddleware()]),
  GetPage(name: "/theplacehome", page: () => Theplacehome()),
  GetPage(name: "/login", page: () => const LogDetails()),
  GetPage(name: "/signup", page: () => const Signup()),
  GetPage(name: "/alldetails", page: () => Alldetails()),
  GetPage(name: "/favoritesign", page: () => FavoriteSign()),
  // GetPage(name: "/", page: () => Theplacehome()),
  // GetPage(name: "/", page: () => Test()),
];
