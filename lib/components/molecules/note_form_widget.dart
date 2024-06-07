import 'package:flutter/material.dart';

import '../atoms/elevated_button_widget.dart';

class NoteFormWidget extends StatelessWidget {
  final TextEditingController titleController;
  final TextEditingController contentController;
  final VoidCallback onSave;

  const NoteFormWidget({
    super.key,
    required this.titleController,
    required this.contentController,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: titleController,
          decoration: const InputDecoration(labelText: 'Title'),
        ),
        TextField(
          controller: contentController,
          decoration: const InputDecoration(labelText: 'Content'),
        ),
        const SizedBox(height: 20),
        ElevatedButtonWidget(
          onPressed: onSave,
          child: const Text('Save'),
        ),
      ],
    );
  }
}
