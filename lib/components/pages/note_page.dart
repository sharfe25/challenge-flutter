import 'package:flutter/material.dart';
import 'package:phase_one_flutter/components/atoms/icon_button_widget.dart';
import 'package:phase_one_flutter/components/templates/dashboard_template.dart';
import 'package:provider/provider.dart';

import '../../models/note_model.dart';
import '../../providers/note_provider.dart';
import '../tokens/colors.dart';

/// The `NotePage` widget displays the details of a single note.
/// It allows users to view the note's title and content, and provides a button to edit the note.
class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    NoteProvider noteProvider =
        Provider.of<NoteProvider>(context, listen: true);
    // Retrieve the note ID passed as an argument to this page
    final String idNote = ModalRoute.of(context)!.settings.arguments as String;

    // Get the note from the NoteProvider using the note ID
    NoteModel note = noteProvider.getNoteById(id: idNote);

    return DashboardTemplate(
      title: 'NOTE',
      headerActions: [
        IconButtonWidget(
          onPressed: () {
            Navigator.pop(context);
            noteProvider.deleteNote(note);
          },
          icon: Icons.delete,
        )
      ],
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
        backgroundColor: AppColors.primaryColorLight,
        onPressed: () {
          Navigator.pushNamed(context, '/edit_note', arguments: note);
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
