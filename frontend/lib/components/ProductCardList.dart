import 'package:flutter/material.dart';
import 'package:frontend/components/ProductCard.dart';
import 'package:frontend/models.dart/productModel.dart';
import 'package:frontend/models.dart/productService.dart';

class ProductCardList extends StatelessWidget {
  const ProductCardList({Key? key}) : super(key: key);
  final String url = "https://i.imgur.com/0jxpCAI.png";
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 3 / 9,
        width: MediaQuery.of(context).size.width * 2 / 4,
        child: FutureBuilder(
          future: ProductService().fetchProductList(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(
                child: Text("${data.error}"),
              );
            } else if (data.hasData) {
              var items = data.data as List<Product>;
              return ListView.builder(
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  scrollDirection: Axis.horizontal,
                  itemCount: items == null ? 0 : items.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: items[index],
                    );
                  });
            }
            return const Center(
              child: Text("got null"),
            );
          },
        ));
  }
}
