import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.purpleAccent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: CounterGestureScreen(),

      
    );
  }
}

class CounterGestureScreen extends StatefulWidget {
  const CounterGestureScreen({super.key});

  @override
  State<CounterGestureScreen> createState() => _CounterGestureScreenState();
}

class _CounterGestureScreenState extends State<CounterGestureScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Gesture Counter")),
      body: GestureDetector(
        onTap: () {
          setState(() {
            counter += 1;
          });
        },
        onDoubleTap: () {
          setState(() {
            counter += 5;
          });
        },
        onLongPress: () {
          setState(() {
            counter = 0;
          });
        },
        child: Center(
          child: Text(
            "$counter",
            style: const TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   Color bgColor = Colors.white;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Gesture Class')),
//       body: GestureDetector(
//         onTap: () {
//           setState(() {
//             bgColor = Colors.blue;
//           });
//         },
//         onDoubleTap: (){
//           setState(() {
//             bgColor = Colors.green;
//           });
//         },
//         onLongPress: (){
//           setState(() {
//             bgColor = Colors.red;
//           });
//         },
//      child: Container(
//           color: bgColor,
//           width: double.infinity,
//           height: double.infinity,
//           child: const Center(
//             child: Text(
//               "Tap / Double Tap / Long Press",
//               style: TextStyle(fontSize: 18),
//             ),
//           ),
//      )
//       ),
//     );
//   }
// }

// class IconsGestureScreen extends StatefulWidget {
//   const IconsGestureScreen({super.key});

//   @override
//   State<IconsGestureScreen> createState() => _IconsGestureScreeState();
// }

// class _IconsGestureScreeState extends State<IconsGestureScreen> {
//   IconData currentIcon = Icons.favorite_border;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Icons Gesture')),
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             setState(() {
//               currentIcon = Icons.favorite;
//             });
//           },
//           onDoubleTap: () {
//             setState(() {
//               currentIcon = Icons.safety_check;
//             });
//           },
//           onLongPress: () {
//             setState(() {
//               currentIcon = Icons.dangerous;
//             });
//           },
//           child: Icon(currentIcon, color: Colors.pink, size: 100),
//         ),
//       ),
//     );
//   }
// }


