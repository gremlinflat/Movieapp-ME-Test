import 'package:moviecatalogapp/api/api_contract.dart';
import 'package:http/http.dart' as http;

class Api implements IApi {
  @override
  Future<String> get(String url) async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then return response body (u have to parse it to json later "jsonDecode(x)" ).
      return response.body;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to hit get api');
    }
  }

  @override
  Future<String> post(String url, Map<String, String> params) {
    // this API project doesn't need post method.
    // ignore: todo
    // TODO: implement post
    throw UnimplementedError();
  }
}
