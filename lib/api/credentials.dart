// a class where to put api credentials hardcodedly
class Credentials {
  final String url = "http://www.omdbapi.com";
  final String apiKey = "faf7e5bb";

  String getEndpoint() {
    return "$url/?apikey=$apiKey&";
  }
}
