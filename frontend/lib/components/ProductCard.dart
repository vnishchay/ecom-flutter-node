import 'package:flutter/material.dart';
import 'package:frontend/components/HeadingsFont.dart';
import 'package:frontend/models.dart/productModel.dart';
import 'package:frontend/pages/ProductPage.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () => {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductPage(product: product)))
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                fit: BoxFit.contain,
                image: NetworkImage(product.image),
                height: 150,
                width: 150,
              ),
            ),
            Center(
              child: Text(
                product.name,
                style: const TextStyle(fontSize: 15),
              ),
            ),
            Center(
              child: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Center(
                      child: HeadingsFont(
                        data: 'Rs ${product.price}',
                        size: 15,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Rs ${product.mrp}',
                      style: const TextStyle(
                          fontSize: 13, decoration: TextDecoration.lineThrough),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Center(
                      child: Text("80% off",
                          style: TextStyle(fontSize: 13, color: Colors.red)),
                    ),
                  ),
                ],
              ),
            ),
            Wrap(
                alignment: WrapAlignment.spaceBetween,
                direction: Axis.horizontal,
                children: [
                  IconButton(
                      onPressed: () => {},
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        size: 25,
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      onPressed: () => {},
                      icon: const Icon(
                        Icons.favorite_outline_rounded,
                        size: 20,
                      ))
                ])
          ],
        ),
      ),
    );
  }
}
