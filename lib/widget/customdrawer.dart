import 'package:flutter/material.dart';
import 'package:the_city/const/theme.dart';
import 'package:the_city/screen/darwerscreen/entertainment.dart';
import 'package:the_city/screen/darwerscreen/features.dart';
import 'package:the_city/screen/darwerscreen/food.dart';
import 'package:the_city/screen/darwerscreen/hotel.dart';
import 'package:the_city/screen/darwerscreen/mony.dart';
import 'package:the_city/screen/darwerscreen/news.dart';
import 'package:the_city/screen/darwerscreen/publicservices.dart';
import 'package:the_city/screen/darwerscreen/shoping.dart';
import 'package:the_city/screen/darwerscreen/sport.dart';
import 'package:the_city/screen/darwerscreen/tourist.dart';
import 'package:the_city/screen/darwerscreen/transportation.dart';

class MyCustomDrawer extends StatelessWidget {
  final List<DrawerItem> drawerItems = [
    DrawerItem('News Info', Icons.article, const NewsInfo()),
    DrawerItem('FeaturesPlaces', Icons.place, const FeaturedPlaces()),
    DrawerItem(
        'Tourist Destination', Icons.shopping_bag, const TouristDestination()),
    DrawerItem('Food & Drink', Icons.fastfood_sharp, const FoodDrink()),
    DrawerItem('Hotels', Icons.hotel, const Hotels()),
    DrawerItem(
        'Entertainment', Icons.local_movies_sharp, const Entertainment()),
    DrawerItem('Sport', Icons.bike_scooter, const Sport()),
    DrawerItem('Shopping', Icons.shop_outlined, const Shopping()),
    DrawerItem(
        'Transportation', Icons.bus_alert_rounded, const Transportation()),
    DrawerItem('Religion', Icons.mosque, const Entertainment()),
    DrawerItem('Public Services', Icons.house_siding, const PublicServices()),
    DrawerItem('Money', Icons.money, const Money()),
  ];

  MyCustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            color: Consts.indigoColor,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: const Center(
              child: Text(
                'Los Angeles',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          for (DrawerItem item in drawerItems)
            ListTile(
              leading: Icon(item.icon),
              title: Text(item.title),
              onTap: () {
                _handleNavigation(context, item.screen);
              },
            ),
        ],
      ),
    );
  }

  void _handleNavigation(BuildContext context, Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }
}

class DrawerItem {
  final String title;
  final IconData icon;
  final Widget screen;

  DrawerItem(this.title, this.icon, this.screen);
}
