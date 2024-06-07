import 'package:challenge_flutter/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/note_provider.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String idNote = ModalRoute.of(context)!.settings.arguments as String;
    NoteModel note = Provider.of<NoteProvider>(context, listen: true)
        .getNoteById(id: idNote);
    return Scaffold(
      appBar: AppBar(
        title: const Text('NOTE'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              note.content,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/edit_note', arguments: note);
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
