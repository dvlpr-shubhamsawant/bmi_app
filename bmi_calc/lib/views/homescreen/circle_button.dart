import 'package:bmi_calc/constants/collerpallet.dart';
import 'package:flutter/material.dart';

Widget circlebutton({icon, ontap}) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: circlebuttoncolor,
      ),
      child: Center(
          child: Icon(
        icon,
        color: Colors.white,
        size: 35,
      )),
    ),
  );
}
