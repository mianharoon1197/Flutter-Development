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
            'Electronic Cards',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: const MyList(),
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
        // ------------- SMARTPHONE CARD -------------
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Card(
            color: Colors.lightBlue[50],
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: const Icon(
                Icons.phone_android,
                size: 40,
                color: Colors.blue,
              ),
              title: const Text(
                'Smartphone',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 4),
                  Text(
                    'Powerful Android with 8GB RAM',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.price_check, color: Colors.green, size: 20),
                      SizedBox(width: 5),
                      Text(
                        'Price: \$799',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        // ------------- LAPTOP CARD -------------
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Card(
            color: Colors.lightBlue[50],
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: const Icon(
                Icons.laptop,
                size: 40,
                color: Colors.blue,
              ),
              title: const Text(
                'Laptop',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 4),
                  Text(
                    'High performance and gaming',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.price_check, color: Colors.green, size: 20),
                      SizedBox(width: 5),
                      Text(
                        'Price: \$1299',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        // ------------- SMARTWATCH CARD -------------
        Container(
          width:200,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Card(
            color: Colors.lightBlue[50],
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: const Icon(
                Icons.watch,
                size: 40,
                color: Colors.blue,
              ),
              title: const Text(
                'Smartwatch',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 4),
                  Text(
                    'Stay connected on the go',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.price_check, color: Colors.green, size: 20),
                      SizedBox(width: 5),
                      Text(
                        'Price: \$299',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
