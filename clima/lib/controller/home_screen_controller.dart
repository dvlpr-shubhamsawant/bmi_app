import 'package:clima/model/home_screen_model.dart';
import 'package:clima/requests/weather_api.dart';
import 'package:clima/services/location_service.dart';
import 'package:flutter/material.dart';

//TODO: step1
// in step-1 : create controller class and inherit ChangeNotifier  // todo1:
class HomeScreenController extends ChangeNotifier {
  var model = HomeScreenModel();

  Future<void> getData() async {
    model = HomeScreenModel();
    try {
      model.position = await LocationService().getCordinates();

      var weatherdata = await WeatherApi().fetchData(
        lat: model.position.latitude,
        lon: model.position.longitude,
      );

      model.id = weatherdata["weather"][0]["id"];
      model.city = weatherdata["name"];
      model.temp = weatherdata["main"]["temp"];
      notifyListeners();
    } catch (e) {
      notifyListeners();
      print(e);
    }
  }

  Future<void> getDataByCity({name}) async {
    model = HomeScreenModel();

    try {
      var weatherdata = await WeatherApi().fetchDataByCityName(city: name);

      model.id = weatherdata["weather"][0]["id"];
      model.city = weatherdata["name"];
      model.temp = weatherdata["main"]["temp"];
      notifyListeners();
    } catch (e) {
      notifyListeners();
      print(e);
    }
  }
}
