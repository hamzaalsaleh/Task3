import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_city/widget/customdrawer.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyCustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('All Places'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: 25, color: Colors.grey.shade300),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh, size: 25, color: Colors.grey.shade300),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu_open_rounded,
                size: 25, color: Colors.grey.shade300),
          ),
        ],
      ),
      body: Center(
        child: Text('This is the Favorites Page'),
      ),
    );
  }
}
