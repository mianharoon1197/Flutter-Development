import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My App Bar',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),

        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     crossAxisAlignment: CrossAxisAlignment.end,

        //     children: [
        //       Container(
        //         width: 100,
        //         height: 50,
        //         color: Colors.lightGreenAccent,
        //         child: Text('Haroon'),
        //       ),
        //       SizedBox(height: 20),
        //       Container(
        //         width: 50,
        //         height: 100,
        //         color: Colors.amberAccent,
        //         child: Text('Haroon'),
        //       ),
        //       SizedBox(height: 20),

        //       Container(
        //         width: 130,
        //         height: 150,
        //         color: Colors.pinkAccent,
        //         child: Text('Haroon'),
        //       ),
        //     ],
        //   ),
        // ),

        // body: Center(
        //   child: Text(
        //     'Im Centerd Text',
        //     style: TextStyle(fontSize: 22, color: Colors.deepPurple),
        //   ),
        // ),
        body: Container(
          height: 300,
          width: 200,
          // color: Colors.indigoAccent,
          child: Column(
            children: [
              Container(
                color: Colors.amber,
                child: const Padding(
                  //padding: EdgeInsets.all(100),
                  padding: EdgeInsets.only(left: 15, top: 80),

                  child: Text('Hello Im Haroon'),
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.green,

                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('How are you'),
                ),
              ),
              SizedBox(height: 40),

              Container(
                color: Colors.red,

                child: const Padding(
                  //padding: EdgeInsets.all(100),
                  padding: EdgeInsets.only(left: 15),

                  child: Text('Hello Im Haroon'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
