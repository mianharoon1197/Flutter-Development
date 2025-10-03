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
        body: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text(
            'Muhammad Haroon Iftikhar',
            style: TextStyle(
              fontSize:30,
              fontWeight: FontWeight.bold,
              color: Colors.green
            ),
          ),
          SizedBox(height: 30,),
            Text(
            '22-NTU-CS-1197',
            style: TextStyle(
              fontSize:30,
              fontWeight: FontWeight.bold,
              color: Colors.green
            ),
          ),
          SizedBox(height: 10,),
          Image.network('https://static.vecteezy.com/system/resources/thumbnails/049/855/347/small_2x/nature-background-high-resolution-wallpaper-for-a-serene-and-stunning-view-photo.jpg',
          width: 500,
          height: 500,)
          ],
        ),
      ),
    );
  }
}
