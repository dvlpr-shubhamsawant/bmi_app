import 'package:coinapp/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'coin_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("💶 Coin Ticker"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Consumer<HomeScreenController>(builder: (context, provider, ws) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              coinDetailsCard(
                text: "1BTC = ${provider.currency["BTC"]}",
              ),
              coinDetailsCard(
                text: "1ETH = ${provider.currency["ETH"]}",
              ),
              coinDetailsCard(
                text: "1LTC = ${provider.currency["LTC"]}",
              ),
            ],
          );
        }),
      ),
      bottomNavigationBar:
          Consumer<HomeScreenController>(builder: (context, controller, ws) {
        return BottomAppBar(
          child: Container(
            height: 70,
            color: Colors.lightBlue,
            child: Center(
              child: DropdownButton(
                autofocus: true,
                elevation: 0,
                icon: SizedBox(),
                underline: SizedBox(),
                menuMaxHeight: 50,
                dropdownColor: Colors.lightBlue,
                isExpanded: true,
                value: controller.selectedCurrency,
                items: List.generate(
                    controller.currenciesList.length,
                    (index) => DropdownMenuItem(
                        child: Center(
                          child: Text(
                            controller.currenciesList[index],
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          ),
                        ),
                        value: controller.currenciesList[index])),
                onChanged: (value) async {
                  controller.selectedCurrency = value!;
                  print(controller.selectedCurrency);
                  await controller.fetchData();
                },
              ),
            ),
          ),
        );
      }),
    );
  }
}
