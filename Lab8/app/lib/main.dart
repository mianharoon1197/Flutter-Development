import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void startJournery() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.redAccent,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('TravelBuddy'), centerTitle: true),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              const Text(
                'Explore the World Together',
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    child: Column(
                      children: [
                        Image(
                          height: 200,
                          width: 150,
                          image: AssetImage('assets/images/Black.png'),
                        ),
                        Text('Destination'),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Card(
                    child: Column(
                      children: [
                        Image(
                          height: 200,
                          width: 150,
                          image: AssetImage('assets/images/Black.png'),
                        ),
                        Text('Travel Tips'),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Card(
                    child: Column(
                      children: [
                        Image(
                          height: 200,
                          width: 150,
                          image: AssetImage('assets/images/Black.png'),
                        ),
                        Text('Activities'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Center(
                child: SizedBox(
                  width: 800,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: Icon(Icons.sunny_snowing, color: Colors.amber),
                        title: Text('Beach Gateway'),
                        subtitle: Text('Destination'),
                        trailing: Icon(Icons.bookmark),
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Beach Gateway Tapped')),
                          );
                        },
                      ),

                      ListTile(
                        leading: Icon(Icons.travel_explore, color: Colors.blue),
                        title: Text('Packing Essentials'),
                        subtitle: Text('Travel Tip'),
                        trailing: Icon(Icons.bookmark),
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Packing Essentais Tapped')),
                          );
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.local_activity,
                          color: Colors.green,
                        ),
                        title: Text('Hiking Adventure'),
                        subtitle: Text('Activity'),
                        trailing: Icon(Icons.bookmark),
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Hiking Adventure Tapped')),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),
              TextButton(
                onPressed: startJournery,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 20,
                  ),
                ),
                child: Text(
                  'Start Your Journey',
                  style: TextStyle(
                    backgroundColor: Colors.blueAccent,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
