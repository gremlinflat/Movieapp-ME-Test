import 'package:flutter/material.dart';

class MovieDetail extends StatelessWidget {
  final String imdbID;
  const MovieDetail({required this.imdbID, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Detail',
      home: Scaffold(
        appBar: AppBar(
          title: Text(imdbID),
        ),
        body: Center(
          child: Text('Movie Detail'),
        ),
      ),
    );
  }
}
