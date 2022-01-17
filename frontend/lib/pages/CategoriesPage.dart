import 'package:flutter/material.dart';

import 'package:frontend/components/HeadingsFont.dart';
import 'package:frontend/components/ProductList.dart';
import 'package:frontend/components/categoryPageCards.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: HeadingsFont(
              data: "Categories",
              size: 30,
            ),
          ),
        ),
        CategoryPageCard(
          str: "Grocery",
        ),
        CategoryPageCard(
          str: "Mobile",
        ),
        CategoryPageCard(
          str: "TV ",
        ),
        CategoryPageCard(
          str: "Fride",
        ),
        CategoryPageCard(
          str: "Face Wash",
        ),
        CategoryPageCard(
          str: "Electricals",
        ),
        CategoryPageCard(
          str: "Washing Machine",
        ),
        CategoryPageCard(
          str: "Mobile Asseceries",
        ),
        CategoryPageCard(
          str: "Vegetables",
        ),
        CategoryPageCard(
          str: "Medicines",
        ),
        CategoryPageCard(
          str: "Kitchen",
        ),
        CategoryPageCard(
          str: "Essentials",
        ),
      ],
    ));
  }
}
