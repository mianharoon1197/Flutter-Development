import 'package:flutter/material.dart';

class SavedNotesPage extends StatelessWidget {
  final List<String> notes;

  const SavedNotesPage({super.key, required this.notes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Saved Notes")),

      body: notes.isEmpty
          ? const Center(
              child: Text(
                "No notes yet. Add some!",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: notes.length,
              separatorBuilder: (_, __) => const SizedBox(height: 10),

              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: ListTile(
                    leading: CircleAvatar(child: Text("${index + 1}")),
                    title: Text(notes[index]),
                  ),
                );
              },
            ),
    );
  }
}
