import 'package:flutter/material.dart';

void main() {
  runApp(FirstWid());
}

class FirstWid extends StatelessWidget {
  const FirstWid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Lab 3',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: const Center(
          child: Text(
            'Muhammad Haroon Iftikhar',
            style: TextStyle(
              fontSize:30,
              fontWeight: FontWeight.bold,
              color: Colors.amberAccent
            ),
          ),
        ),
      ),
    );
  }
}
