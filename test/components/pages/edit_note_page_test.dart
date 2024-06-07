import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:phase_one_flutter/components/pages/edit_note_page.dart';
import 'package:phase_one_flutter/providers/note_provider.dart';
import 'package:provider/provider.dart';

import '../../providers/note_provider_test.mocks.dart';

void main() {
  group('EditNotePage', () {
    late MockNoteProvider mockNoteProvider;

    setUp(() {
      mockNoteProvider = MockNoteProvider();
    });

    testWidgets('displays New Note when creating a new note',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider<NoteProvider>.value(value: mockNoteProvider),
          ],
          child: MaterialApp(
            home: EditNotePage(),
          ),
        ),
      );

      expect(find.text('New Note'), findsOneWidget);
    });
  });
}
