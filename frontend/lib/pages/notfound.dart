import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotFountPage extends StatelessWidget {
  const NotFountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String svg = 'assets/undraw_page_not_found_re_e9o6.svg';
    final Widget svgwidget = SvgPicture.asset(
      svg,
      semanticsLabel: '404 ',
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: svgwidget,
            ),
            Center(
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  // color: Colors.black,
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: BackButton(
                  onPressed: () => Navigator.pop(context),
                  color: Colors.black,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  "Go Back",
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
