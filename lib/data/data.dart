import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

void fetchData(String token, String text) async {
  final response = await http.get(
      Uri.parse('https://pfa.foreca.com/api/v1/location/search/$text?lang=es'),
      headers: {'Authorization': 'Bearer $token'});

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    print('data: $data');
  } else {
    throw Exception('Failed to load data');
  }
}
