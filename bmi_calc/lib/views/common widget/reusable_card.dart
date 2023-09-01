import 'package:bmi_calc/constants/collerpallet.dart';
import 'package:flutter/material.dart';

Widget reusableCard({child, color}) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        color: color ?? ksecondarycolor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: child,
    ),
  );
}
