import 'package:clima/controller/home_screen_controller.dart';
import 'package:clima/model/weather_model.dart';
import 'package:clima/views/home%20screen/city%20screen/city_screen.dart';
import 'package:clima/views/home%20screen/widgets/bgwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var model = WeatherModel();
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<HomeScreenController>(context, listen: false);
    return getBG(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CityScreen()));
                },
                child: Icon(
                  Icons.location_city_outlined,
                  size: 35,
                ),
              ),
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: GestureDetector(
              onTap: () async {
                await provider.getData();
              },
              child: Icon(
                Icons.gps_fixed,
                size: 35,
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Consumer<HomeScreenController>(
              builder: (context, controller, ws) {
            return controller.model.id != null
                ? Column(
                    children: [
                      Spacer(),
                      Text(
                        controller.model.temp.toString() +
                            "ºC"
                                "  " +
                            model.getWeatherIcon(controller.model.id!),
                        style: TextStyle(fontSize: 70, color: Colors.white),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                          model.getMessage(controller.model.temp!.toInt()) +
                              controller.model.city.toString(),
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 40, color: Colors.grey[800])),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.45,
                      )
                    ],
                  )
                : Column(
                    children: [
                      Spacer(),
                      Text(
                          "Unable to fetch data check your internet connection. Please",
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 25, color: Colors.grey[800])),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.55,
                      )
                    ],
                  );
          }),
        ),
      ),
    );
  }
}
