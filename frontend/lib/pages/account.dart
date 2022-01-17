import 'package:flutter/material.dart';
import 'package:frontend/components/AccountImage.dart';
import 'package:frontend/components/AccountsHeader.dart';
import 'package:frontend/components/Header.dart';
import 'package:frontend/components/HeadingsFont.dart';
import 'package:frontend/components/accountPageCard.dart';
import 'package:frontend/components/invite_friend.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.vertical,
        children: [
          Center(
            child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                direction: Axis.horizontal,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/invite');
                      },
                      child: AccountImage()),
                  Center(
                    child: Column(
                      children: [
                        GestureDetector(
                            onTap: () => {
                                  Navigator.pushReplacementNamed(
                                      context, '/signin')
                                },
                            child: HeadingsFont(data: "Mr Bean", size: 30)),
                        HeadingsFont(data: "Comedian", size: 20),
                        // HeadingsFont(data: "", size: 10)
                      ],
                    ),
                  )
                ]),
          ),
          // Center(child: AccountPageCards())
          const AccountPageCard(str: "Orders", route: '/orders'),

          const AccountPageCard(str: "Orders", route: '/orders'),

          const AccountPageCard(str: "Orders", route: '/orders'),

          const AccountPageCard(str: "Orders", route: '/orders'),
          const AccountPageCard(str: "Orders", route: '/orders')
        ],
      ),
    );
  }
}
