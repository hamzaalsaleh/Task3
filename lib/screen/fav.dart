import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_city/const/approute.dart';
import 'package:the_city/const/theme.dart';
import 'package:the_city/controller/mycontroller.dart';
import 'package:the_city/widget/customdrawer.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyCustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Favorite'),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You must log in or create new account',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Consts.indigoColor)),
                    onPressed: () {
                      Get.toNamed(Approute.login);
                    },
                    child: Text("Login")),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Consts.indigoColor)),
                    onPressed: () {
                      Get.toNamed(Approute.signup);
                    },
                    child: Text("Signup")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
