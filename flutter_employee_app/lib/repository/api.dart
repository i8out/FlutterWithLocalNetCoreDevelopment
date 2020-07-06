import 'package:http/http.dart' as http;

Future<String> getApi(String url) async {
  print(url);
  final resp = await http.get(url);
  return resp.body;
}
