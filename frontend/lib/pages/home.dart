import 'package:flutter/material.dart';
import 'package:frontend/components/Header.dart';
import 'package:frontend/components/HeadingsFont.dart';
import 'package:frontend/components/Navigaton.dart';
import 'package:frontend/components/ProductCardList.dart';
import 'package:frontend/components/ProductList.dart';
import 'package:frontend/pages/CategoriesPage.dart';
import 'package:frontend/pages/HomeBody.dart';
import 'package:frontend/pages/account.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> currentWidget = <Widget>[
    HomeBody(),
    const CategoriesPage(),
    const ProfilePage(),
  ];
  late int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        leadingWidth: 150,
        leading: Container(
          padding: EdgeInsets.only(left: 30, top: 10),
          // padding: EdgeInsets.all(0),
          child: Image.asset(
            '2.png',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () => Navigator.of(context).pushNamed('/favourite'),
                icon: Icon(
                  Icons.favorite_outline_rounded,
                  size: 30,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed('/notifications'),
                icon: Icon(
                  Icons.notifications_on_outlined,
                  size: 30,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () => Navigator.of(context).pushNamed('/cart'),
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                  color: Colors.black,
                )),
          )
        ],
      ),
      backgroundColor: Colors.grey[50],
      body: currentWidget[index], // keep it a variable
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.black38,
        items: [
          Icon(Icons.home, size: 30),
          Icon(Icons.category_sharp, size: 30),
          Icon(Icons.account_box_rounded, size: 30),
        ],
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
      ),
    );
  }
}
