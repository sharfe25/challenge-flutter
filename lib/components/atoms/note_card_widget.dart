import 'package:flutter/material.dart';

import '../../models/note_model.dart';

class NoteCardWidget extends StatelessWidget {
  final NoteModel note;

  const NoteCardWidget({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(note.title),
        subtitle: Text(note.content),
        onTap: () {
          Navigator.pushNamed(
            context,
            '/note',
            arguments: note.id,
          );
        },
      ),
    );
  }
}
