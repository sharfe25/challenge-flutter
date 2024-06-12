import 'package:flutter/material.dart';
import '../models/note_model.dart';

/// `NoteProvider` manages the state of the notes in the application.
/// It uses `ChangeNotifier` to notify listeners when the state changes.
class NoteProvider with ChangeNotifier {
  // A private list of notes.
  final List<NoteModel> _notes = [];

  /// A getter to retrieve the list of notes.
  List<NoteModel> get notes => _notes;

  /// Retrieves a note by its ID.
  ///
  /// Throws an exception if no note with the given ID is found.
  ///
  /// [id] The ID of the note to retrieve.
  NoteModel getNoteById({required String id}) {
    return notes.firstWhere((note) => note.id == id, orElse: NoteModel.empty);
  }

  /// Adds a new note to the list.
  ///
  /// [note] The note to add.
  void addNote(NoteModel note) {
    _notes.add(note);
    notifyListeners(); // Notifies listeners that the list of notes has changed.
  }

  /// Updates an existing note.
  ///
  /// If the note is found in the list, it is replaced with the updated note.
  /// Otherwise, nothing happens.
  ///
  /// [note] The updated note.
  void updateNote(NoteModel note) {
    final index = _notes.indexWhere((n) => n.id == note.id);
    if (index != -1) {
      _notes[index] = note;
      notifyListeners(); // Notifies listeners that the list of notes has changed.
    }
  }

  /// Deletes a note from the list.
  ///
  /// If the note is found in the list, it is removed.
  /// Otherwise, nothing happens.
  ///
  /// [note] The note to delete.
  void deleteNote(NoteModel note) {
    _notes.removeWhere((n) => n.id == note.id);
    notifyListeners(); // Notifies listeners that the list of notes has changed.
  }
}
