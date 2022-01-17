import 'dart:convert';

class Product {
  String name;
  String model;
  String description;
  String image;
  String category;

  String id;
  String brand;
  String price;
  String mrp;
  String gst;
  String quantity;
  String warranty;
  Product({
    required this.name,
    required this.model,
    required this.description,
    required this.image,
    required this.category,
    required this.id,
    required this.brand,
    required this.price,
    required this.mrp,
    required this.gst,
    required this.quantity,
    required this.warranty,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'model': model,
      'description': description,
      'image': image,
      'category': category,
      'id': id,
      'brand': brand,
      'price': price,
      'mrp': mrp,
      'gst': gst,
      'quantity': quantity,
      'warranty': warranty,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] ?? '',
      model: map['model'] ?? '',
      description: map['description'] ?? '',
      image: map['image'] ?? '',
      category: map['category'] ?? '',
      id: map['id'] ?? '',
      brand: map['brand'] ?? '',
      price: map['price'] ?? '',
      mrp: map['mrp'] ?? '',
      gst: map['gst'] ?? '',
      quantity: map['quantity'] ?? '',
      warranty: map['warranty'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
