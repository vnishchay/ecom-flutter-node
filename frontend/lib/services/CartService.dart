import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:frontend/models.dart/productModel.dart';

final firebaseRef =
    FirebaseFirestore.instance.collection('user').doc("r7SnSzoDOuMQsOLGUOJa");

class CartService {
  // add to cart
  void addToCard(List<Product> products) async {
    try {
      await firebaseRef.set({"prods": products, "total price": 2299, "qty": 4});
    } on Exception catch (e) {
      print('Failed with execption : ${e}');
    }
  }
  // remove from cart
  // update cart
  // total cart value
  // total item quantity

}
