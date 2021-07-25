import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List> getData() async {
  final response = await http.get(
      'https://mocki.io/v1/26ca1ca6-332a-46fe-9df8-392d87a0ecf2',
      headers: {"Accept": "application/json"});
      var convertDatatoJson = jsonDecode(response.body);
      return convertDatatoJson;
}
