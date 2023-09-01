import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class WeatherApi {
  var key = "8fe303ee7eeb43ca3764696964db03e8";

  // Future<dynamic> fetchData({lat, lon}) async {
  //   final url = Uri.parse(
  //       'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$key'); // Replace with your API URL

  //   try {
  //     final response = await http.get(url);

  //     if (response.statusCode == 200) {
  //       return jsonDecode(response.body);
  //     }
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  Future<dynamic> fetchData({lat, lon}) async {
    final dio = Dio(); // Create a Dio instance

    try {
      final response = await dio.get(
          "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$key&units=metric");

      if (response.statusCode == 200) {
        return response.data;
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<dynamic> fetchDataByCityName({city}) async {
    final dio = Dio(); // Create a Dio instance

    try {
      final response = await dio.get(
          "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$key&units=metric");

      if (response.statusCode == 200) {
        return response.data;
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
