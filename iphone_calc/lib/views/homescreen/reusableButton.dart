import 'package:flutter/material.dart';

import '../../constants/collerpallet.dart';

Widget reusebutton({color, buttoncolor, widget, fontsize, ontap}) {
  return GestureDetector(
    onTap: () {
      ontap();
    },
    child: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: buttoncolor ?? numbuttoncolor,
      ),
      margin: EdgeInsets.all(6),
      width: 85,
      height: 85,
      child: Center(child: widget),
    ),
  );
}
