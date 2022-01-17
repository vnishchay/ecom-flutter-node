import 'package:flutter/material.dart';

import 'package:frontend/components/HeadingsFont.dart';
import 'package:frontend/components/StyledButton.dart';
import 'package:frontend/models.dart/productModel.dart';
import 'package:frontend/pages/ProductPage.dart';

class ProductListTile extends StatelessWidget {
  late String mrp;
  late String name;
  late String price;
  late String image;
  ProductListTile({
    Key? key,
    required this.mrp,
    required this.name,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () => {},
        child: SizedBox(
          height: 140,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              runAlignment: WrapAlignment.start,
              direction: Axis.vertical,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(image), fit: BoxFit.scaleDown)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                HeadingsFont(data: mrp, size: 20),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    '${price}',
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_cart_outlined),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
