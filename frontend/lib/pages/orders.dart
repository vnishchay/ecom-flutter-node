import 'package:flutter/material.dart';
import 'package:frontend/components/Header.dart';
import 'package:frontend/components/HeadingsFont.dart';
import 'package:frontend/components/ProductList.dart';
import 'package:frontend/components/customAppbar.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: Center(
        child: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: HeadingsFont(data: "Orders", size: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
