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
        primaryColor: Colors.blue, // Used by many widgets
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: Colors.amber),
        scaffoldBackgroundColor: Colors.grey[100],

        // 🌟 APP BAR THEME
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue, // AppBar background
          foregroundColor: Colors.white, // Text and icons color
          centerTitle: true, // Centers the title text
          elevation: 4, // Shadow under the AppBar
          titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          iconTheme: IconThemeData(color: Colors.white), // Icon color
        ),

        // 🌟 TEXT THEME
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 20, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.grey[800]),
        ),

        // 🌟 BUTTON THEME
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
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
        title: Text('Automatic Theme Demo'), // Uses appBarTheme automatically
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings), // Also gets white color from theme
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Elevated Button'),
            ),
            SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            SizedBox(height: 20),
            Text(
              'Text with theme',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              color: Theme.of(context).primaryColor,
              child: Text(
                'Container using primaryColor',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
