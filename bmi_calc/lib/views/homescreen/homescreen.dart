import 'package:bmi_calc/constants/collerpallet.dart';
import 'package:bmi_calc/views/common%20widget/reusable_card.dart';
import 'package:bmi_calc/views/homescreen/gendercard.dart';
import 'package:bmi_calc/views/homescreen/weight_agecard.dart';
import 'package:bmi_calc/views/resultscreen/resultscreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var height = 140;
  var weight = 75;
  var age = 25;
  var selectedcard;

  selectCard(name) {
    selectedcard = name;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ResultScreen(height: height, weight: weight),
              ),
            );
          },
          child: Container(
            height: 70,
            color: kaccentcolor,
            child: Center(
              child: Text(
                "CALCULATE YOUR BMI",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            // Gender card Section
            Expanded(
              child: Row(
                children: [
                  genderCard(
                    ontap: () {
                      selectCard("MALE");
                    },
                    color: selectedcard == "MALE" ? kaccentcolor : null,
                    icon: Icons.male,
                    title: "MALE",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  genderCard(
                      icon: Icons.female,
                      color: selectedcard == "FEMALE" ? kaccentcolor : null,
                      title: "FEMALE",
                      ontap: () {
                        selectCard("FEMALE");
                      }),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // Height Slider
            reusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                      color: fontGrey,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                          color: whitecolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                        ),
                      ),
                      Text(
                        "CM",
                        style: TextStyle(
                          color: fontGrey,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                      activeColor: whitecolor,
                      inactiveColor: fontGrey,
                      thumbColor: kaccentcolor,
                      min: 50,
                      max: 300,
                      value: height.toDouble(),
                      onChanged: (value) {
                        height = value.toInt();
                        setState(() {});
                      })
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // Weight and age Section
            Expanded(
              child: Row(
                children: [
                  reusableCard(
                      child: Column(
                    children: [
                      bottomcard(
                        title: "WEIGHT",
                        number: weight,
                        addbutton: () {
                          weight++;
                          setState(() {});
                        },
                        removebutton: () {
                          weight--;
                          setState(() {});
                        },
                      ),
                    ],
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  reusableCard(
                      child: Column(
                    children: [
                      bottomcard(
                          title: "AGE",
                          number: age,
                          addbutton: () {
                            age++;
                            setState(() {});
                          },
                          removebutton: () {
                            age--;
                            setState(() {});
                          })
                    ],
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
