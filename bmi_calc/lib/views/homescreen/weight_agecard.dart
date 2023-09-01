import 'package:bmi_calc/constants/collerpallet.dart';
import 'package:bmi_calc/views/common%20widget/reusable_card.dart';
import 'package:bmi_calc/views/homescreen/circle_button.dart';
import 'package:flutter/material.dart';

Widget bottomcard({title, number, addbutton, removebutton}) {
  return reusableCard(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title.toString(),
          style: TextStyle(
            color: fontGrey,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          number.toString(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 55,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            circlebutton(
              icon: Icons.remove,
              ontap: removebutton,
            ),
            SizedBox(
              width: 5,
            ),
            circlebutton(
              icon: Icons.add,
              ontap: addbutton,
            ),
          ],
        ),
      ],
    ),
  );
}
