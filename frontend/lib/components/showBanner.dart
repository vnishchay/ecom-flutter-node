import 'package:flutter/material.dart';

class ShowBanner extends StatelessWidget {
  double height;
  String image;

  ShowBanner({
    Key? key,
    required this.height,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        image,
      ),
    );
  }
}
