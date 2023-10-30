import 'package:get/get.dart';
import 'package:the_city/middileware/middleware.dart';
import 'package:the_city/screen/onbording.dart';
import 'package:the_city/screen/theplacehome.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Mybording(), middlewares: [Mymiddleware()]),
  GetPage(name: "/theplacehome", page: () => Theplacehome()),
  // GetPage(name: "/", page: () => Theplacehome()),
  // GetPage(name: "/", page: () => Test()),
];
