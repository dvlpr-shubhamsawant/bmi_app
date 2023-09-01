import 'package:flutter/material.dart';

Container coinDetailsCard({text}) {
  return Container(
    margin: EdgeInsets.only(
      top: 20,
    ),
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.lightBlue,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 19,
        color: Colors.white,
      ),
    ),
  );
}
