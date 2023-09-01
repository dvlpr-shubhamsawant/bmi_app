import 'package:flutter/material.dart';

getBG({child}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage(
            "images/bg.jpg",
          ),
          fit: BoxFit.fill),
    ),
    child: child,
  );
}
