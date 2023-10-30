import 'package:flutter/material.dart';

import 'package:the_city/function/showmenu.dart';
import 'package:the_city/widget/home/slivergrid.dart';
import 'package:the_city/widget/sliverappbar.dart';
import 'package:the_city/widget/customdrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyCustomDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          Sliverapp(action: [
            IconButton(
              onPressed: () {
                showMenuhome(context);
              },
              icon: Icon(Icons.menu_open_rounded,
                  size: 25, color: Colors.grey.shade300),
            ),
          ]),
          const Sliverhome()
        ],
      ),
    );
  }
}
