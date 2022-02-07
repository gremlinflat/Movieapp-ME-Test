import 'dart:convert';

import 'api.dart';
import 'credentials.dart';
import '../models/movie.dart';

class DetailMovieAPI {
  final Api? _api = Api();
  final Credentials? _credentials = Credentials();

  Future<Movie> getByID(String id) async {
    final endpoint = _credentials!.getEndpoint() + 'i=' + id;

    final response = await _api!.get(endpoint);
    final json = jsonDecode(response);

    return Movie.fromJson(json);
  }
}
