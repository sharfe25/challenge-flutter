import 'package:flutter_test/flutter_test.dart';
import 'package:phase_one_flutter/models/note_model.dart';

void main() {
  group('Note model test', () {

    test(
        'Verify NoteModel comstructor',
        () {
      const NoteModel note = NoteModel(
        id: '1',
        title: 'title',
        content: 'content'
      );

      expect(note.id, equals('1'));
      expect(
        note.title,
        equals('title'),
      );
      expect(note.content, equals('content'));
    });

    test(
        'The .empty method return a instance with empty properties',
        () {
      final NoteModel emptyNote = NoteModel.empty();

      expect(emptyNote.title, equals(''));
    });
  });
}
