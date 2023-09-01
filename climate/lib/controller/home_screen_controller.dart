import 'package:climate/requests/weather_request.dart';
import 'package:climate/services/geolocator_service.dart';
import 'package:flutter/material.dart';

class HomeScreenController extends ChangeNotifier {
  var position;
  var id;
  var city;
  var temp;
  getWeatherData() async {
    position = await GetLocation().getCordinates();
    var data =
        await WeatherData().fetchApiData(position.latitude, position.longitude);
    id = data["weather"][0]["id"];
    city = data["name"];
    temp = data["main"]["temp"];
  }
}
