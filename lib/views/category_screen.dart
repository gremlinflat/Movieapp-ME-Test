import 'package:flutter/material.dart';
import 'components/categories.dart';

class CategoryScreen extends StatelessWidget {
  final List<String> categories = [
    "Captain America",
    "Ironman",
    "Spiderman",
    "Hulk",
    "Thor",
  ];

  CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return Category(title: categories[index]);
      },
      itemCount: categories.length,
    );
  }
}
