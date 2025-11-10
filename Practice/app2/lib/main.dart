import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theme Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,                  // AppBar, Button
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(secondary: Colors.amber),
        scaffoldBackgroundColor: Colors.grey[100],  // Scaffold background
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 20, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.grey[800]),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,  // Button background
            foregroundColor: Colors.white, // Button text
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Automatic Theme Demo'), // AppBar uses theme automatically
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Elevated Button'), // Uses theme automatically
            ),
            SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add), // Uses accentColor automatically
            ),
            SizedBox(height: 20),
            Text(
              'Text with theme', 
              style: Theme.of(context).textTheme.bodyLarge, // Needs manual theme
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              color: Theme.of(context).primaryColor, // Needs manual theme
              child: Text('Container using primaryColor', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
