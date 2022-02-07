abstract class IApi {
  String get(String url);
  String post(String url, Map<String, String> params);
}
