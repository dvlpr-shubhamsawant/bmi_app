import 'package:clima/controller/home_screen_controller.dart';
import 'package:clima/views/home%20screen/widgets/bgwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CityScreen extends StatelessWidget {
  CityScreen({super.key});

  var CityNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return getBG(
        child: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: CityNameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.location_city,
                    color: Colors.green,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () async {
                  await Provider.of<HomeScreenController>(context,
                          listen: false)
                      .getDataByCity(name: CityNameController.text.toString());

                  Navigator.pop(context);
                },
                child: Text(
                  "Get weather",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
