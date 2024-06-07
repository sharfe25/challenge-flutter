import 'package:flutter/material.dart';

import 'components/pages/edit_note_page.dart';
import 'components/pages/home_page.dart';
import 'components/pages/note_page.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const HomePage(),
  '/note': (context) => const NotePage(),
  '/edit_note': (context) => EditNotePage(),
};
