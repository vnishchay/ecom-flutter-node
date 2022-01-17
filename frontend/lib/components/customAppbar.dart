import 'package:flutter/material.dart';

AppBar appbar(context) {
  return AppBar(
    backgroundColor: Colors.grey[50],
    elevation: 0,
    leadingWidth: 150,
    leading: Container(
      padding: EdgeInsets.only(left: 30, top: 10),
      // padding: EdgeInsets.all(0),
      child: Wrap(
        alignment: WrapAlignment.start,
        children: [
          IconButton(
            color: Colors.black,
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () => Navigator.pop(context),
          ),
        ],
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
            onPressed: () => Navigator.pushNamed(context, '/notifications'),
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
  );
}
