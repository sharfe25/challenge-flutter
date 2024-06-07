import 'package:challenge_flutter/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/note_provider.dart';
import '../molecules/note_form_widget.dart';

class EditNotePage extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  EditNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    final NoteModel? note =
        ModalRoute.of(context)!.settings.arguments as NoteModel?;

    if (note != null) {
      titleController.text = note.title;
      contentController.text = note.content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(note == null ? 'New Note' : 'Edit Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: NoteFormWidget(
          titleController: titleController,
          contentController: contentController,
          onSave: () {
            if (note == null) {
              Provider.of<NoteProvider>(context, listen: false).addNote(
                NoteModel(
                  id: DateTime.now().toString(),
                  title: titleController.text,
                  content: contentController.text,
                ),
              );
            } else {
              Provider.of<NoteProvider>(context, listen: false).updateNote(
                NoteModel(
                  id: note.id,
                  title: titleController.text,
                  content: contentController.text,
                ),
              );
            }

            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
