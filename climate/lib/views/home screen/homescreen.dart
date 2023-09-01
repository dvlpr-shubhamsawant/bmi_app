import 'package:climate/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<HomeScreenController>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ID : ${controller.id}"),
            Text("CITY : ${controller.city}"),
            Text("TEMPRATURE : ${controller.temp}"),
          ],
        ),
      ),
    );
  }
}
