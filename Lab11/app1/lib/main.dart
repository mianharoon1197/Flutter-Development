import 'package:flutter/material.dart';
import '/pages/add_notes.dart';
import '/pages/save_notes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),

      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notepad")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                final String? newNote = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddNotesScreen(),
                  ),
                );

                if (newNote != null && newNote.trim().isNotEmpty) {
                  setState(() {
                    notes.add(newNote.trim());
                  });

                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(const SnackBar(content: Text("Note Added")));
                }
              },
              child: const Text("Add Notes"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SavedNotesPage(notes: notes),
                  ),
                );
              },
              child: const Text("Saved Notes"),
            ),
          ],
        ),
      ),
    );
  }
}
