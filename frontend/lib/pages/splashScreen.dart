import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontend/components/HeadingsFont.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String svg = 'assets/undraw_online_groceries_a02y.svg';
    final Widget svgwidget = SvgPicture.asset(
      svg,
      semanticsLabel: '404 ',
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: [
            const Center(
                child: Padding(
              padding: EdgeInsets.only(top: 80, bottom: 80),
              child: HeadingsFont(data: "Shivam Store", size: 40),
            )),
            Container(
              width: 300,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: svgwidget,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(30),
                child: const Text(
                  "Welcome",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
