import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherData {
  Future<dynamic> fetchApiData(lat, lon) async {
    var apikey = "8fe303ee7eeb43ca3764696964db03e8";
    var apiUrl =
        'https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${apikey}&units=metric'; // Replace with your API URL

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
        // You can process the response data here
      }
    } catch (e) {
      rethrow;
    }
  }
}
