import 'package:bmi_calc/controller/calculator_controller.dart';
import 'package:flutter/material.dart';

import '../../constants/collerpallet.dart';

class ResultScreen extends StatefulWidget {
  ResultScreen({super.key, this.height, this.weight});
  static String id = "ResultScreen";

  var height, weight;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late CalculatorController controller;

  @override
  void initState() {
    controller =
        CalculatorController(height: widget.height, weight: widget.weight);
    super.initState();
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
            Navigator.pop(context);
          },
          child: Container(
            height: 70,
            color: kaccentcolor,
            child: Center(
              child: Text(
                "RE-CALCULATE",
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
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Result",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 30),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              color: ksecondarycolor,
              padding: EdgeInsets.all(40),
              child: Center(
                child: Expanded(
                  child: Column(
                    children: [
                      Text(
                        controller.getBMIFeedback(),
                        style: TextStyle(
                          color: controller.getBMIFeedback() == "Normal"
                              ? Colors.green
                              : controller.getBMIFeedback() == "Underweight"
                                  ? Colors.orange
                                  : Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        controller.bmi.toStringAsFixed(2),
                        style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Normal BMI Range:",
                        style: TextStyle(
                          color: fontGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "18.5 - 25 kg/m2",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        controller.getBMIAdvice(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
