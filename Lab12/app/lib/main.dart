import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // generated via FlutterFire CLI

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  bool firebaseConnected = false;

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    firebaseConnected = true;
  } catch (e) {
    firebaseConnected = false;
    print('Firebase initialization error: $e');
  }

  runApp(MyApp(firebaseConnected: firebaseConnected));
}

class MyApp extends StatelessWidget {
  final bool firebaseConnected;

  const MyApp({super.key, required this.firebaseConnected});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Connection Check',
      home: Scaffold(
        appBar: AppBar(
         centerTitle: true,
          title: const Text('Firebase Connection Check'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: firebaseConnected
              ? const Text(
                  '✅ Connected to Firebase!',
                  style: TextStyle(fontSize: 24, color: Colors.green),
                )
              : const Text(
                  '❌ Failed to connect to Firebase',
                  style: TextStyle(fontSize: 24, color: Colors.red),
                ),
        ),
      ),
    );
  }
}
