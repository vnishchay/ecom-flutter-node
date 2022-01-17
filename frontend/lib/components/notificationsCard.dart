import 'package:flutter/material.dart';
import 'package:frontend/components/customAppbar.dart';

class NotificationsTile extends StatelessWidget {
  const NotificationsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1 / 5,
      color: Colors.white,
      child: Center(
        child: ListTile(
          leading: Padding(
            padding: EdgeInsets.all(8),
            child: Image.asset('2.png'),
          ),
          title: Text('Three-line ListTile'),
          subtitle: Text('A sufficiently long subtitle warrants three lines.'),
          isThreeLine: true,
        ),
      ),
    );
  }
}
