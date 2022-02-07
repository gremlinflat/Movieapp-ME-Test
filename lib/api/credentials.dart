// a class where to put api credentials hardcodedly
class Credentials {
  String url = "http://www.omdbapi.com";
  String apiKey = "faf7e5bb";

  String getEndpoint() {
    return "$url/?apikey=$apiKey&";
  }
}
