import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Xylophone App',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.redAccent),
                ),
                onPressed: () {
                  playSound(1);
                },
                child: Text(
                  'Click Red',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.orangeAccent),
                ),
                onPressed: () {
                  playSound(2);
                },
                child: Text(
                  'Click Orange',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.yellowAccent),
                ),
                onPressed: () {
                  playSound(3);
                },
                child: Text(
                  'Click Yellow',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.greenAccent),
                ),
                onPressed: () {
                  playSound(4);
                },
                child: Text(
                  'Click Green',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.tealAccent),
                ),
                onPressed: () {
                  playSound(5);
                },
                child: Text(
                  'Click Teal',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
                ),
                onPressed: () {
                  playSound(6);
                },
                child: Text(
                  'Click Blue',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.purpleAccent),
                ),
                onPressed: () {
                  playSound(7);
                },
                child: Text(
                  'Click Purple',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
