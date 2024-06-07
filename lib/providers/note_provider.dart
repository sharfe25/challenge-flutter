import 'package:flutter/material.dart';
import '../models/note_model.dart';

class NoteProvider with ChangeNotifier {
  final List<NoteModel> _notes = [];

  List<NoteModel> get notes => _notes;

  NoteModel getNoteById({required String id}) {
    return notes.firstWhere(
      (note) => note.id == id,
    );
  }

  void addNote(NoteModel note) {
    _notes.add(note);
    notifyListeners();
  }

  void updateNote(NoteModel note) {
    final index = _notes.indexWhere((n) => n.id == note.id);
    if (index != -1) {
      _notes[index] = note;
      notifyListeners();
    }
  }

  void deleteNote(NoteModel note) {
    _notes.removeWhere((n) => n.id == note.id);
    notifyListeners();
  }
}
