import 'package:flutter/material.dart';
import 'package:frontend/pages/account.dart';

class AccountsHeader extends StatelessWidget {
  const AccountsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        runAlignment: WrapAlignment.spaceBetween,
        direction: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back,
                size: 40,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Wrap(
              children: [
                IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.search_outlined,
                      size: 30,
                    )),
                IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.filter_2_outlined,
                      size: 30,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
