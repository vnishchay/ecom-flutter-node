import 'package:flutter/material.dart';

class HeadingsFont extends StatelessWidget {
  final String data;
  final double size;
  const HeadingsFont({Key? key, required this.data, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
