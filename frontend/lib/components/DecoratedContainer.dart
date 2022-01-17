import 'package:flutter/material.dart';

import 'package:frontend/components/HeadingsFont.dart';
import 'package:frontend/pages/orders.dart';

class DecoratedContainer extends StatelessWidget {
  String data;
  Widget toRoute;
  DecoratedContainer({
    Key? key,
    required this.data,
    required this.toRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => toRoute)),
        child: Container(
          width: 40,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              border: Border.all(color: Colors.blueAccent, width: 0.5)),
          child: Center(
            child: HeadingsFont(
              data: data,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
