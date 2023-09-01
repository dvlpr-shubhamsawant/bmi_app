import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  playSound() async {
    final player = AudioPlayer();
    await player.play(UrlSource('assets/note1.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () async {
                playSound();
              },
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.greenAccent,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.lightBlue,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.purpleAccent,
            ),
          ),
        ],
      ),
    );
  }
}
