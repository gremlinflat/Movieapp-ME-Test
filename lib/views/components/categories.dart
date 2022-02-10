import 'package:flutter/material.dart';
import 'package:moviecatalogapp/api/search_movie_api.dart';
import 'movie_card.dart';

class Category extends StatefulWidget {
  final String title;

  const Category({required this.title, Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final SearchMovieAPI _api = SearchMovieAPI();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
                fontSize: 20,
                textBaseline: TextBaseline.alphabetic,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 66, 66, 66),
                fontFamily: 'Roboto',
                letterSpacing: 1.5),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 300,
            //making listview builder
            child: FutureBuilder(
                future: _api.search(widget.title),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        return MovieCard(
                          snapshot.data[index].Poster.toString(),
                          snapshot.data[index].Title.toString(),
                          snapshot.data[index].Type.toString(),
                          snapshot.data[index].Year.toString(),
                          snapshot.data[index].imdbID.toString(),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 10);
                      },
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
