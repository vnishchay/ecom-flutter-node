import 'package:flutter/material.dart';

class OrdersTile extends StatelessWidget {
  const OrdersTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        autofocus: true,
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset('logo.png'),
        ),
      ),
    );
  }
}
