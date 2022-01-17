import 'package:flutter/material.dart';
import 'package:frontend/components/HeadingsFont.dart';
import 'package:frontend/components/customAppbar.dart';

class CartProductComponent extends StatelessWidget {
  const CartProductComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1 / 5,
        // color: Colors.white,
        child: Center(
          child: ListTile(
            leading: Padding(
              padding: EdgeInsets.all(8),
              child: Image.asset('2.png'),
            ),
            title: Text('Three-line ListTile'),
            subtitle:
                Text('A sufficiently long subtitle warrants three lines.'),
            trailing: Wrap(
              alignment: WrapAlignment.spaceBetween,
              direction: Axis.vertical,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.2, color: Colors.grey)),
                  child: Center(
                    child: HeadingsFont(
                      data: "2 x 3",
                      size: 15,
                    ),
                  ),
                ),
                Container(
                  // color: Colors.green,
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                Container(
                  // color: Colors.red,
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.remove,
                    color: Colors.red,
                    size: 30,
                  ),
                )
              ],
            ),
            isThreeLine: true,
          ),
        ),
      ),
    );
  }
}
