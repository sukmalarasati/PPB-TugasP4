import 'package:flutter/material.dart';
import 'package:tugasp4/body_banner.dart';
import 'package:tugasp4/main_drawer.dart';
import 'package:tugasp4/body.dart';
import 'package:tugasp4/item_view.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        floatingActionButton: Container(
          padding: EdgeInsets.all(5),
          height: 48,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.orange,
                minimumSize: const Size(250, 48),
                maximumSize: const Size(250, 48),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Recipe',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ]),
        ),
        appBar: AppBar(
          title: const Center(child: Text('Recipes')),
          backgroundColor: Colors.orange,
        ),
        drawer: MainDrawer(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home Page"),
              subtitle: Text("Subtitle menu 1"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("Search Page"),
              subtitle: Text("Subtitle menu 1"),
              onTap: () {},
            ),
          ],
        ),
        body: Body(banners: [
          BBanner("images/pecel.jpeg", "Pecel", 4.5),
          BBanner("images/ayam-goreng.jpg", "Ayam Goreng", 3.9),
          BBanner("images/bakso.jpg", "Bakso", 4),
        ], items: [
          Item(1, "Sehun", "Bumbu kacang dari pecelnya juara!", 4.5),
          Item(2, "Yoona", "Sesuai ekspektasi, enak bgt loch!", 4),
          Item(3, "Ayas", "Porsinya kurang banyak", 3.5),
        ]),
      ),
    );
  }
}
