import 'package:http/http.dart' as http;

class AppHttp {
  Future<List<dynamic>> getJedis() {
    var url = '';

    var reponse = http.get(url);

    return null; // response.body
  }
}
