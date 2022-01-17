import 'package:flutter/material.dart';
import 'package:frontend/components/HeadingsFont.dart';
import 'package:frontend/components/ProductCard.dart';
import 'package:frontend/components/customAppbar.dart';

class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: Center(
        child: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: HeadingsFont(data: "Favourites", size: 30),
              ),
            ),
            // ProductCard(product: product)
          ],
        ),
      ),
    );
  }
}
