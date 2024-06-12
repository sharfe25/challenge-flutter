import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:phase_one_flutter/components/pages/home_page.dart';
import 'package:phase_one_flutter/models/note_model.dart';
import 'package:phase_one_flutter/providers/note_provider.dart';
import 'package:provider/provider.dart';

import '../../providers/note_provider_test.mocks.dart';

void main() {
  testWidgets('HomePage has a title and floating action button',
      (WidgetTester tester) async {
    // Arrange: Create a mock NoteProvider
    final mockNoteProvider = MockNoteProvider();
    when(mockNoteProvider.notes).thenReturn([
      const NoteModel(
          id: '1', title: 'Test Note', content: 'This is a test note.'),
    ]);
    when(mockNoteProvider.getNoteById(id: anyNamed('id')))
        .thenAnswer((invocation) {
      final id = invocation.namedArguments[const Symbol('id')] as String;
      return NoteModel(
          id: id, title: 'Test Note', content: 'This is a test note.');
    });

    // Act: Build our app and trigger a frame.
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<NoteProvider>.value(value: mockNoteProvider),
        ],
        child: const MaterialApp(
          home: HomePage(),
        ),
      ),
    );

    // Assert: Verify the title and the presence of the Floating Action Button.
    expect(find.text('Notes'), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}
