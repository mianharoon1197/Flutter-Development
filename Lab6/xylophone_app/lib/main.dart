import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void playSound(int soundNumber)  {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone'),
          centerTitle: true,
          backgroundColor: Colors.tealAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.redAccent),
                onPressed: () {
                  playSound(1);
                },
                child: const Text(
                  'Red',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}
