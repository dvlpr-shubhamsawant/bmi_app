import 'package:flutter/material.dart';

import 'coin_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "💰 Coin Ticker 💰",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            coinCard(text: "1 BTC = 5060 ZAR"),
            coinCard(text: "1 BTC = 5060 ZAR"),
            coinCard(text: "1 BTC = 5060 ZAR"),
          ],
        ),
      ),
    );
  }
}
