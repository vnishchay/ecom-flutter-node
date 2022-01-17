import 'package:flutter/material.dart';
import 'package:frontend/components/HeadingsFont.dart';
import 'package:frontend/components/StyledButton.dart';
import 'package:frontend/components/customAppbar.dart';
import 'package:frontend/models.dart/productModel.dart';

class ProductPage extends StatelessWidget {
  late Product product;
  ProductPage({
    Key? key,
    required this.product,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: appbar(context),
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image(
                    height: MediaQuery.of(context).size.height * 1 / 2.5,
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(product.image)),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: HeadingsFont(data: product.name, size: 30),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: IconButton(
                      onPressed: () => {},
                      icon: const Icon(
                        Icons.favorite_outline_outlined,
                        size: 30,
                      )),
                )
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  // direction: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Center(
                        child: HeadingsFont(
                          data: 'Rs ${product.price}',
                          size: 25,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Rs ${product.mrp}',
                        style: const TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Center(
                        child: Text("80% off",
                            style: TextStyle(fontSize: 18, color: Colors.red)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: StyledButtons(data: "Add To Cart", widget: Material()),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: StyledButtons(data: "Buy Now", widget: Material()),
                )
              ],
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(product.description),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
