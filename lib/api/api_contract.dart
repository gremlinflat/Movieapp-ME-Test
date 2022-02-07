abstract class IApi {
  Future<String> get(String url);
  Future<String> post(String url, Map<String, String> params);
}
