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
    return Center(
      child: Container(
        width: 400,
        child: ListView(
          children: [
            Card(
              color: Colors.grey[100],
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.phone_android, size: 20, color: Colors.blue),
                        SizedBox(width: 8),
                        Text(
                          'Smartphone',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text('Powerful Android with 8GB RAM'),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_exchange,
                          color: Colors.green,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Price: \$799',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Card(
              color: Colors.grey[100],
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.laptop, size: 20, color: Colors.blue),
                        SizedBox(width: 8),
                        Text(
                          'Laptop',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text('High performance for work and gaming'),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_exchange,
                          color: Colors.green,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Price: \$1299',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Card(
              color: Colors.grey[100],
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.watch, size: 20, color: Colors.blue),
                        SizedBox(width: 8),
                        Text(
                          'Smartwatch',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text('Stay connected on the go'),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(Icons.price_check, color: Colors.green, size: 20),
                        SizedBox(width: 5),
                        Text(
                          'Price: \$299',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
