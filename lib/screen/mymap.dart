import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Text('This is the map Page'),
      ),
    );
  }
}
