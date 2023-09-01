import 'dart:convert';

import 'package:http/http.dart' as http;

class CurrencyApi {
  String apiKey = "926D17B7-103E-46FE-BC44-2FA36F6C7708";

  Future<dynamic> fetchData({crypto, currency}) async {
    final apiUrl = 'https://rest.coinapi.io/v1/exchangerate/$crypto/$currency';
    final headers = {
      'Content-Type': 'application/json',
      'X-CoinAPI-Key': apiKey
    };

    try {
      final response = await http.get(Uri.parse(apiUrl), headers: headers);

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
        // You can process the response data here
      } else {
        print('API Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
