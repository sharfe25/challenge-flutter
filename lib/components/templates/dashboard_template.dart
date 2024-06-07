import 'package:flutter/material.dart';
import 'package:phase_one_flutter/components/organism/app_bar_widget.dart';

class DashboardTemplate extends StatelessWidget {
  const DashboardTemplate({
    Key? key,
    required this.title,
    required this.body,
    this.floatingActionButton,
    this.headerActions,
  }) : super(key: key);
  final String title;
  final Widget body;
  final FloatingActionButton? floatingActionButton;
  final List<Widget>? headerActions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          title: title,
          actions: headerActions,
        ),
        body: body,
        floatingActionButton: floatingActionButton);
  }
}
