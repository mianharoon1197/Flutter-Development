import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Electronic List',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: MyList(),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.phone),
          title: const Text('Smartphone'),
          trailing: Icon(Icons.add),
          onTap: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Smart Phone Tapped')));
          },
        ),
        ListTile(
          leading: Icon(Icons.laptop),
          title: const Text('Laptop'),
          tileColor: Colors.grey,
          trailing: Icon(Icons.add),
          onTap: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Laptop Tapped')));
          },
        ),
        ListTile(
          leading: Icon(Icons.phone_android),
          title: const Text('Tablet'),
          trailing: Icon(Icons.add),
          onTap: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Tablet Tapped')));
          },
        ),
        ListTile(
          leading: Icon(Icons.watch),
          title: const Text('Smartwatch'),
          tileColor: Colors.grey,
          trailing: Icon(Icons.add),
          onTap: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Smart Watch Tapped')));
          },
        ),
        ListTile(
          leading: Icon(Icons.headphones),
          title: const Text('Headphones'),
          trailing: Icon(Icons.add),
          onTap: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Headphones Tapped')));
          },
        ),
        ListTile(
          leading: Icon(Icons.computer),
          title: const Text('Dekstop Computer'),
          tileColor: Colors.grey,
          trailing: Icon(Icons.add),
          onTap: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Computer Tapped')));
          },
        ),
        ListTile(
          leading: Icon(Icons.camera),
          title: const Text('Camera'),
          trailing: Icon(Icons.add),
          onTap: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Camer Tapped')));
          },
        ),
        ListTile(
          leading: Icon(Icons.mouse),
          title: const Text('Mouse'),
          tileColor: Colors.grey,
          trailing: Icon(Icons.add),
          onTap: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Mouse Tapped')));
          },
        ),
        ListTile(
          leading: Icon(Icons.keyboard),
          title: const Text('Keyboard'),
          trailing: Icon(Icons.add),
          onTap: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Keyboard Tapped')));
          },
        ),
        ListTile(
          leading: Icon(Icons.speaker),
          title: const Text('Bluetooth Speaker'),
          tileColor: Colors.grey,
          trailing: Icon(Icons.add),
          onTap: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Bluthooth Speaker Tapped')));
          },
        ),
        ListTile(
          leading: Icon(Icons.gamepad),
          title: const Text('Gaming Console'),
          trailing: Icon(Icons.add),
          onTap: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Gaming Console Tapped')));
          },
        ),
      ],
    );
  }
}
