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

  // //store temporary List for casting variable
  // final SearchMovieAPI _api = SearchMovieAPI();
  CategoryScreen({Key? key}) : super(key: key);

  // Future<List<Movie>> apiGetMovies(String category) async {
  //   List<Movie> result = await _searchMovieAPI.search(category);
  //   return result;
  // }

  // void getMoviesByCategory(String category) async {
  //   List<Movie> result = await apiGetMovies(category);
  //   tempMovies = result;
  // }

  // List<Movie> getTempListMovie(String category) {
  //   getMoviesByCategory(category);
  //   return tempMovies;
  // }

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
