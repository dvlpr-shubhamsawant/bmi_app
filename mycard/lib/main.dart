import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("images/simple.jpeg"),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Shubham Sawant",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontSize: 14,
                  letterSpacing: 1.2,
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(10),
                width: 310,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail,
                      size: 30,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "shubhamsawant@gmail.com",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(10),
                width: 310,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      size: 30,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "8550987634",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
