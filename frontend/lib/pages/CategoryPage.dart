import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/components/Header.dart';
import 'package:frontend/components/HeadingsFont.dart';
import 'package:frontend/components/ProductCard.dart';
import 'package:frontend/components/ProductList.dart';
import 'package:frontend/models.dart/productModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/models.dart/productService.dart';
import 'package:http/http.dart' as http;

class CategoryPage extends ConsumerWidget {
  CategoryPage({Key? key}) : super(key: key);
  final futureProduct = FutureProvider<List<Product>>(
      (ref) async => ProductService().fetchProductList());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productlist = ref.watch(futureProduct);

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100), child: HomeAppBar()),
      body: Center(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
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
              ))),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[50],
      elevation: 0,
      leadingWidth: 150,
      leading: Container(
        padding: EdgeInsets.only(left: 30, top: 10),
        // padding: EdgeInsets.all(0),
        child: Wrap(
          alignment: WrapAlignment.start,
          children: [
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.notifications_on_outlined,
                size: 30,
                color: Colors.black,
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: Colors.black,
              )),
        )
      ],
    );
  }
}

const jsonData = [
  {
    "name": "India Gate rice",
    "price": "19999",
    "model": "RR192019023",
    "quantity": "45",
    "gst": "18",
    "category": "grocery",
    "description":
        "sfd sf loremsipsum skdjfoijgifknfkjdsaldkjlskdjfoi jksdfkdsj ksldkfa okjoijjoj jkfd jlksdfjkd jaoijoidsj kjdsakvmioaeji jasdfk jksdjkfadshj kaslkdfj;d jnsdafk jka",
    "image":
        "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS1u0hllFICzfTVvZGt0TiyzS8_6a_OPr5DvlukX5sPw4n2fpHbol0V9tanYkipUiYpvv-BXuuXi08&usqp=CAc",
    "seller": "ITDRIRT",
    "id": "utruoiueirtr",
    "brand": "Samsung",
    "warranty": "1",
    "mrp": "99999"
  },
  {
    "name": "Rajmahal Rice 5kg",
    "price": "19999",
    "model": "RR192019023",
    "quantity": "45",
    "gst": "18",
    "category": "grocery",
    "description":
        "sfd sf loremsipsum skdjfoijgifknfkjdsaldkjlskdjfoi jksdfkdsj ksldkfa okjoijjoj jkfd jlksdfjkd jaoijoidsj kjdsakvmioaeji jasdfk jksdjkfadshj kaslkdfj;d jnsdafk jka",
    "image":
        "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQvPFq0kp2m0HL6Z59nNCGWJWIuv5vUZ7p7fyjxUMguINB4_qAJPspAYrnjg2aDTp_nbZhkxFUnaw&usqp=CAc",
    "seller": "ITDRIRT",
    "id": "utruoiueirtr",
    "brand": "Samsung",
    "warranty": "1",
    "mrp": "99999"
  },
  {
    "name": "SamSung TV ",
    "price": "19999",
    "model": "RR192019023",
    "quantity": "45",
    "gst": "18",
    "category": "electronics",
    "description":
        "sfd sf loremsipsum skdjfoijgifknfkjdsaldkjlskdjfoi jksdfkdsj ksldkfa okjoijjoj jkfd jlksdfjkd jaoijoidsj kjdsakvmioaeji jasdfk jksdjkfadshj kaslkdfj;d jnsdafk jka",
    "image":
        "https://rukminim1.flixcart.com/image/312/312/krf91u80/television/0/f/n/f32s001-candes-original-imag57hsyrgngzhx.jpeg?q=70",
    "seller": "ITDRIRT",
    "id": "utruoiueirtr",
    "brand": "Samsung",
    "warranty": "1",
    "mrp": "99999"
  },
  {
    "name": "Samsung Refrigerator",
    "price": "19999",
    "model": "RR192019023",
    "quantity": "45",
    "gst": "18",
    "category": "electronics",
    "description":
        "sfd sf loremsipsum skdjfoijgifknfkjdsaldkjlskdjfoi jksdfkdsj ksldkfa okjoijjoj jkfd jlksdfjkd jaoijoidsj kjdsakvmioaeji jasdfk jksdjkfadshj kaslkdfj;d jnsdafk jka",
    "image":
        "https://rukminim1.flixcart.com/image/416/416/kehfi4w0/refrigerator-new/p/4/k/rt28t3453ut-hl-3-samsung-original-imafv5qtrtdgjszx.jpeg?q=70",
    "seller": "ITDRIRT",
    "id": "utruoiueirtr",
    "brand": "Samsung",
    "warranty": "1",
    "mrp": "99999"
  },
  {
    "name": "Samsung Refrigerator",
    "price": "19999",
    "model": "RR192019023",
    "quantity": "45",
    "gst": "18",
    "category": "electronics",
    "description":
        "sfd sf loremsipsum skdjfoijgifknfkjdsaldkjlskdjfoi jksdfkdsj ksldkfa okjoijjoj jkfd jlksdfjkd jaoijoidsj kjdsakvmioaeji jasdfk jksdjkfadshj kaslkdfj;d jnsdafk jka",
    "image":
        "https://rukminim1.flixcart.com/image/416/416/kehfi4w0/refrigerator-new/p/4/k/rt28t3453ut-hl-3-samsung-original-imafv5qtrtdgjszx.jpeg?q=70",
    "seller": "ITDRIRT",
    "id": "utruoiueirtr",
    "brand": "Samsung",
    "warranty": "1",
    "mrp": "99999"
  },
  {
    "name": "India Gate Pak rice",
    "price": "19999",
    "model": "RR192019023",
    "quantity": "45",
    "gst": "18",
    "category": "grocery",
    "description":
        "sfd sf loremsipsum skdjfoijgifknfkjdsaldkjlskdjfoi jksdfkdsj ksldkfa okjoijjoj jkfd jlksdfjkd jaoijoidsj kjdsakvmioaeji jasdfk jksdjkfadshj kaslkdfj;d jnsdafk jka",
    "image":
        "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS1u0hllFICzfTVvZGt0TiyzS8_6a_OPr5DvlukX5sPw4n2fpHbol0V9tanYkipUiYpvv-BXuuXi08&usqp=CAc",
    "seller": "ITDRIRT",
    "id": "utruoiueirtr",
    "brand": "Samsung",
    "warranty": "1",
    "mrp": "99999"
  },
  {
    "name": "Rajmahal Rice 10 kg",
    "price": "99",
    "model": "RR19dfs2019023",
    "quantity": "45",
    "gst": "18",
    "category": "grocery",
    "description":
        "sfd sf loremsipsum skdjfoijgifknfkjdsaldkjlskdjfoi jksdfkdsj ksldkfa okjoijjoj jkfd jlksdfjkd jaoijoidsj kjdsakvmioaeji jasdfk jksdjkfadshj kaslkdfj;d jnsdafk jka",
    "image":
        "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQvPFq0kp2m0HL6Z59nNCGWJWIuv5vUZ7p7fyjxUMguINB4_qAJPspAYrnjg2aDTp_nbZhkxFUnaw&usqp=CAc",
    "seller": "ITDRIRT",
    "id": "utruoiueirtr",
    "brand": "Samsung",
    "warranty": "1",
    "mrp": "999"
  }
];
