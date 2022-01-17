import 'package:flutter/material.dart';

import 'package:frontend/components/HeadingsFont.dart';

class AccountPageCard extends StatelessWidget {
  final String str;
  final String route;

  const AccountPageCard({
    Key? key,
    required this.str,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2,
        shadowColor: Colors.white60,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            splashColor: Colors.grey[700],
            focusColor: Colors.white24,
            highlightColor: Colors.white24,
            hoverColor: Colors.black,
            onTap: () {
              route == null
                  ? Container()
                  : Navigator.of(context).pushNamed('${route}');
            },
            child: SizedBox(
              height: 100,
              child: Center(
                child: HeadingsFont(
                  data: str,
                  size: 25,
                ),
              ),
            ),
          ),
        ));
  }
}
