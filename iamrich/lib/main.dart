import 'package:flutter/material.dart';

void main() {
  runApp(
    myapp(),
  );
}

class myapp extends StatelessWidget {
  const myapp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "I am Rich ",
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 0, 62, 150),
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
              "https://www.freepnglogos.com/uploads/diamond-png/diamond-gemstone-black-icon-transparent-png-svg-vector-37.png",
            ),
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
