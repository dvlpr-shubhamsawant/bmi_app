import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container coinCard({text}) {
  return Container(
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.lightBlue,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Center(
      child: Text(
        text,
      ),
    ),
  );
}
