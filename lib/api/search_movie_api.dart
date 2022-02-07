import 'dart:convert';

import 'api.dart';
import 'credentials.dart';
import '../models/movie.dart';

class SearchMovieAPI {
  final Api? _api;
  final Credentials? _credentials;

  SearchMovieAPI(this._api, this._credentials);

  Future<List<Movie>> search(String query) async {
    // handling spaces in query and making it lowercase
    query = query.replaceAll(' ', '').toLowerCase();

    final endpoint = _credentials!.getEndpoint() + 's=' + query;

    final response = await _api!.get(endpoint);
    final json = jsonDecode(response);

    return json.map<Movie>((json) => Movie.fromJson(json)).toList();
  }
}
