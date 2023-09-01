import 'package:bmi_calc/constants/collerpallet.dart';
import 'package:bmi_calc/views/homescreen/homescreen.dart';
import 'package:bmi_calc/views/resultscreen/resultscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomeScreen.id: (context) => HomeScreen(),
          ResultScreen.id: (context) => ResultScreen(),
        },
        initialRoute: HomeScreen.id,
        theme: ThemeData(
          sliderTheme: SliderThemeData(
              thumbShape: RoundSliderThumbShape(
                  enabledThumbRadius: 15, pressedElevation: 20)),
          scaffoldBackgroundColor: kprimarycolor,
          fontFamily: "poppins",
          appBarTheme: AppBarTheme(
            backgroundColor: kprimarycolor,
            shadowColor: Colors.black,
            centerTitle: true,
          ),
        ),
      ),
    );
  }
}
