import 'package:flutter/material.dart';
import 'package:iphone_calc/constants/collerpallet.dart';
import 'package:iphone_calc/views/homescreen/reusableButton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String str = "100000";

  addval(String st) {
    str += st;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 200,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                str,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              reusebutton(
                  widget: Text("AC"),
                  color: Colors.black,
                  buttoncolor: greybuttoncolor,
                  ontap: () {
                    str = "";
                    setState(() {});
                  }),
              reusebutton(
                widget: Text("+/-"),
                color: Colors.black,
                buttoncolor: greybuttoncolor,
                fontsize: 30.toDouble(),
              ),
              reusebutton(
                widget: Icon(Icons.percent),
                color: Colors.black,
                buttoncolor: greybuttoncolor,
              ),
              reusebutton(
                // widget: Icon(Icons),
                color: Colors.white,
                buttoncolor: funcbuttoncolor,
              ),
            ],
          ),
          Row(
            children: [
              reusebutton(
                  buttoncolor: numbuttoncolor,
                  color: Colors.white,
                  widget: Text(
                    "7",
                  ),
                  fontsize: 40.toDouble(),
                  ontap: () {
                    addval("7");
                    setState(() {});
                  }),
              reusebutton(
                  buttoncolor: numbuttoncolor,
                  color: Colors.white,
                  widget: Text("8"),
                  fontsize: 40.toDouble(),
                  ontap: () {
                    addval("8");
                    setState(() {});
                  }),
              reusebutton(
                  buttoncolor: numbuttoncolor,
                  color: Colors.white,
                  widget: Text("9"),
                  fontsize: 40.toDouble(),
                  ontap: () {
                    addval("9");
                    setState(() {});
                  }),
              reusebutton(
                // widget: Icon(),
                color: Colors.white,
                buttoncolor: funcbuttoncolor,
              ),
            ],
          ),
          Row(
            children: [
              reusebutton(
                  buttoncolor: numbuttoncolor,
                  color: Colors.white,
                  widget: Text("4"),
                  fontsize: 40.toDouble(),
                  ontap: () {
                    addval("4");
                    setState(() {});
                  }),
              reusebutton(
                  buttoncolor: numbuttoncolor,
                  color: Colors.white,
                  widget: Text("5"),
                  fontsize: 40.toDouble(),
                  ontap: () {
                    addval("5");
                    setState(() {});
                  }),
              reusebutton(
                  buttoncolor: numbuttoncolor,
                  color: Colors.white,
                  widget: Text("6"),
                  fontsize: 40.toDouble(),
                  ontap: () {
                    addval("6");
                    setState(() {});
                  }),
              reusebutton(
                  // widget: Icon(),
                  color: Colors.white,
                  buttoncolor: funcbuttoncolor,
                  fontsize: 50.toDouble()),
            ],
          ),
          Row(
            children: [
              reusebutton(
                  buttoncolor: numbuttoncolor,
                  color: Colors.white,
                  widget: Text("1"),
                  fontsize: 40.toDouble(),
                  ontap: () {
                    addval("1");
                    setState(() {});
                  }),
              reusebutton(
                  buttoncolor: numbuttoncolor,
                  color: Colors.white,
                  widget: Text("2"),
                  fontsize: 40.toDouble(),
                  ontap: () {
                    addval("2");
                    setState(() {});
                  }),
              reusebutton(
                  buttoncolor: numbuttoncolor,
                  color: Colors.white,
                  widget: Text("3"),
                  fontsize: 40.toDouble(),
                  ontap: () {
                    addval("3");
                    setState(() {});
                  }),
              reusebutton(
                // widget: Icon(),
                color: Colors.white,
                fontsize: 40.toDouble(),
                buttoncolor: funcbuttoncolor,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 192,
                child: reusebutton(
                    widget: Text("0"),
                    ontap: () {
                      addval("0");
                      setState(() {});
                    }),
              ),
              reusebutton(
                  widget: Text("."),
                  ontap: () {
                    str += ".";
                    setState(() {});
                  }),
              reusebutton(
                // widget: Icon(),
                buttoncolor: funcbuttoncolor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
