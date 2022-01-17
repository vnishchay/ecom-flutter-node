import 'dart:convert';

class Banner {
  String category;
  String brand;
  String product;
  String imageURl;

  Banner({
    required this.category,
    required this.brand,
    required this.product,
    required this.imageURl,
  });

  Map<String, dynamic> toMap() {
    return {
      'category': category,
      'brand': brand,
      'product': product,
      'imageURl': imageURl,
    };
  }

  factory Banner.fromMap(Map<String, dynamic> map) {
    return Banner(
      category: map['category'] ?? '',
      brand: map['brand'] ?? '',
      product: map['product'] ?? '',
      imageURl: map['imageURl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Banner.fromJson(String source) => Banner.fromMap(json.decode(source));
}
