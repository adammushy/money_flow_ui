import 'exports.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  static const String url = "url from backend";
  static const String mediaUrl = " media url from backend";
  var token = '';

  getRequest(url, apiUrl, context) async {
    var fullUrl = apiUrl + url;

    try {
      var res = http.get(Uri.parse(fullUrl), headers: {
        'Content-type': 'application/json',
        'Accept': 'application/jsom'
      });
// return evalu
    } catch (e) {}
  }
}
