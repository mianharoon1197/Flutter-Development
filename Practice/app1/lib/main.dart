import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _currentValue = 50; // initial value

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Slider Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                value: _currentValue,
                min: 0,
                max: 100,
                divisions: 20, // optional: shows steps
                label: _currentValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentValue = value; // update value
                  });
                },
              ),
              Text('Value: ${_currentValue.toStringAsFixed(1)}'),
            ],
          ),
        ),
      ),
    );
  }
}
