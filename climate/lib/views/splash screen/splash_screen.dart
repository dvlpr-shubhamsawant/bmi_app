import 'package:climate/controller/home_screen_controller.dart';
import 'package:climate/views/home%20screen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    weatherDataFetch();
    super.initState();
  }

  weatherDataFetch() async {
    await Provider.of<HomeScreenController>(context, listen: false)
        .getWeatherData();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
