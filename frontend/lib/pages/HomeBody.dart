import 'package:flutter/material.dart';
import 'package:frontend/components/Header.dart';
import 'package:frontend/components/Navigaton.dart';
import 'package:frontend/components/ProductCardList.dart';
import 'package:frontend/components/ProductList.dart';
import 'package:frontend/components/showBanner.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          SizedBox(height: 100, child: const Navigation()),
          Center(),
          ShowBanner(height: 100, image: "tvbanner.png"),
          ProductCardList(),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              "Popular",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          ProductCardList(),
          ShowBanner(height: 100, image: "refrigerator.png"),
          ProductCardList(),
        ],
      ),
    );
  }
}
