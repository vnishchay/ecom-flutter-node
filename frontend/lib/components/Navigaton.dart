import 'package:flutter/material.dart';
import 'package:frontend/components/IconsButton.dart';
import 'package:frontend/pages/CategoryPage.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: const [
              SmartIconButton(),
              SmartIconButton(),
              SmartIconButton(),
              SmartIconButton(),
              SmartIconButton(),
              SmartIconButton(),
              SmartIconButton(),
              SmartIconButton(),
            ]));
  }
}
