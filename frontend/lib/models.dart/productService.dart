import 'package:frontend/models.dart/productModel.dart';
import 'package:frontend/pages/CategoryPage.dart';

class ProductService {
  String url = "https://jsonkeeper.com/b/D6F9";

  Future<List<Product>> fetchProductList() async {
    print(url);
    var data = jsonData;
    List<Product> prod = data.map((e) => Product.fromMap(e)).toList();
    return prod;
  }
}
