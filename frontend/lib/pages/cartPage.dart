import 'package:flutter/material.dart';
import 'package:frontend/components/HeadingsFont.dart';
import 'package:frontend/components/StyledButton.dart';
import 'package:frontend/components/cartComponent.dart';
import 'package:frontend/components/customAppbar.dart';
import 'package:frontend/components/orderTile.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: Center(
        child: Stack(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                CartProductComponent(),
                CartProductComponent(),
                CartProductComponent(),
                CartProductComponent(),
                CartProductComponent(),
                CartProductComponent(),
              ],
            ),
            // Positioned(child: child)

            Positioned(
              // ,

              bottom: 0,
              height: 90,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30)),
                  width: 1,
                  height: 40,
                  // color: Colors.red

                  child: Center(
                    child: Row(
                      // direction: Axis.horizontal,
                      // alignment: WrapAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HeadingsFont(
                              data: "Total 14 * 145  = 9979", size: 20),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: HeadingsFont(data: "Checkout", size: 15),
                              ),
                              CircleAvatar(
                                  backgroundColor: Colors.black,
                                  child: Icon(
                                    Icons.arrow_forward_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
