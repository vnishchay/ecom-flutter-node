import 'package:flutter/material.dart';
import 'package:frontend/components/HeadingsFont.dart';
import 'package:frontend/components/cartComponent.dart';
import 'package:frontend/components/customAppbar.dart';
import 'package:frontend/components/notificationsCard.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: Center(
        child: ListView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Center(child: HeadingsFont(data: "Notifications", size: 30)),
            ),
            NotificationsTile(),
            NotificationsTile(),
            NotificationsTile(),
            NotificationsTile(),
            NotificationsTile(),
          ],
        ),
      ),
    );
  }
}
