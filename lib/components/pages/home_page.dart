import 'package:flutter/material.dart';
import 'package:phase_one_flutter/components/tokens/colors.dart';

import '../templates/dashboard_template.dart';
import '../organism/note_list_widget.dart';

/// The `HomePage` widget is the main screen of the application.
/// It displays a list of notes and a floating action button to add a new note.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DashboardTemplate(
      title: 'Notes',
      body: const NoteListWidget(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColorLight,
        onPressed: () {
          Navigator.pushNamed(context, '/edit_note');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
