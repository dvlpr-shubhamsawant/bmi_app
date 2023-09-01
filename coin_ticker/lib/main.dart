import 'package:coin_ticker/views/home%20screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoinTicker());
}

class CoinTicker extends StatelessWidget {
  const CoinTicker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
