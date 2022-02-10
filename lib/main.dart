import 'package:flutter/material.dart';
import 'package:moviecatalogapp/views/category_screen.dart';

void main() {
  runApp(const MyApp());
}

//make scaffold screen with appbar and body show movie card
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Movie App'),
        ),
        body: CategoryScreen(),
      ),
    );
  }
}
