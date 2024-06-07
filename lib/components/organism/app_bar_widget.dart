import 'package:flutter/material.dart';
import 'package:phase_one_flutter/components/tokens/colors.dart';

/// A custom AppBar widget used throughout the application.
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const AppBarWidget({required this.title, this.actions, Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColorLight,
      title: Text(title),
      actions: actions,
    );
  }

  @override
  final Size preferredSize;
}
