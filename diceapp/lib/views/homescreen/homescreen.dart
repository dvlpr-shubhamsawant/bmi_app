import 'dart:math';

import 'package:flutter/material.dart';

class HomeScrenn extends StatefulWidget {
  const HomeScrenn({super.key});
  static String id = "HomeScrenn";

  @override
  State<HomeScrenn> createState() => _HomeScrennState();
}

class _HomeScrennState extends State<HomeScrenn> {
  randomnum() {
    Random random = Random();
    return 1 + random.nextInt(6);
  }

  getimage(a, b) {
    a = randomnum();
    b = randomnum();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var r1 = 6;
    var r2 = 5;
    return Scaffold(
      body: Center(
        child: Container(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    getimage(r1, r2);
                  },
                  child: Container(
                    height: 200,
                    width: 200,
                    // color: Colors.greenAccent,
                    child: Image.asset("images/dice$r1.png"),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    getimage(r1, r2);
                  },
                  child: Container(
                    height: 200,
                    width: 200,
                    // color: Colors.greenAccent,
                    child: Image.asset("images/dice$r2.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
