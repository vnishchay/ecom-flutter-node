import 'dart:convert';

import 'package:frontend/models.dart/banner.dart';

class BannerService {
  // get the banner and apply it where its needed ;
  List<Banner> getBanner() {
    return banner.map((e) => Banner.fromMap(e)).toList();
  }
}

const banner = [
  {
    "category": "TV",
    "product": "Samsung TV",
    "brand": "samsung",
    "image": "assets/tvbanner.png"
  },
  {
    "category": "TV",
    "product": "Samsung TV",
    "brand": "samsung",
    "image": "assets/refrigerator.png"
  },
  {
    "category": "TV",
    "product": "Samsung TV",
    "brand": "samsung",
    "image": "assets/tvbanner.png"
  },
  {
    "category": "TV",
    "product": "Samsung TV",
    "brand": "samsung",
    "image": "assets/refrigerator.png"
  },
];
