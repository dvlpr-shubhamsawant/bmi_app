import 'package:bmi_calc/views/common%20widget/reusable_card.dart';
import 'package:flutter/material.dart';

Widget genderCard({icon, title, isselected, ontap, color}) {
  return reusableCard(
    color: color,
    child: GestureDetector(
      onTap: ontap,
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 100,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
