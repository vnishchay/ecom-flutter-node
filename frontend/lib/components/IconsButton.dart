import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontend/components/HeadingsFont.dart';
import 'package:frontend/pages/CategoryPage.dart';

class SmartIconButton extends StatelessWidget {
  const SmartIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String svg = 'assets/1554921351.svg';
    final Widget svgwidget = SvgPicture.asset(
      svg,
      width: 55,
      height: 55,
    );
    return Card(
      color: Colors.white,
      shape: CircleBorder(),
      elevation: 1,
      child: InkWell(
        onTap: () => {Navigator.pushNamed(context, '/category')},
        child: Container(
          decoration: BoxDecoration(

              // shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(20),
              // color: Colors.white,
              // border: Border.all(width: 0.1, color: Colors.black)),
              ),
          // height: 100,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: svgwidget,
          ),
        ),
      ),
    );
  }
}
