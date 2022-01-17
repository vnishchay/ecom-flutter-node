import 'package:flutter/material.dart';

import 'HeadingsFont.dart';

class StyledButtons extends StatelessWidget {
  final String data;
  final Widget widget;
  const StyledButtons({
    Key? key,
    required this.data,
    required this.widget,
  }) : super(key: key);

  // const StyledButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Colors.white,
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            Colors.black,
          ),
          overlayColor: MaterialStateProperty.all<Color>(
            Colors.green,
          ),
          shadowColor: MaterialStateProperty.all<Color>(
            Colors.black,
          ),
          elevation: MaterialStateProperty.all<double>(5.0),
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10.0,
            ),
          ),
          side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        onPressed: () => {},
        child: Center(child: HeadingsFont(data: data, size: 20)));
  }
}
