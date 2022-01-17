import 'package:flutter/material.dart';

class AccountImage extends StatelessWidget {
  const AccountImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 150,
        // height: 200,
        // width: ,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://static.wikia.nocookie.net/mrbean/images/4/4b/Mr_beans_holiday_ver2.jpg/revision/latest/scale-to-width-down/250?cb=20181130033425'),
                fit: BoxFit.scaleDown)),
      ),
    );
  }
}
