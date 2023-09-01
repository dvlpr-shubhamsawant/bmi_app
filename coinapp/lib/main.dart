import 'package:coinapp/controller/home_screen_controller.dart';
import 'package:coinapp/views/SplashScreen/splash_screen.dart';
import 'package:coinapp/views/home%20screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(CoinApp());
}

class CoinApp extends StatelessWidget {
  const CoinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeScreenController()),
      ],
      child: MaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}
