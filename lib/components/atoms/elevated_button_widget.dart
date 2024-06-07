import 'package:flutter/material.dart';

import '../tokens/colors.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color? backgroundColor;

  const ElevatedButtonWidget(
      {super.key,
      required this.child,
      required this.onPressed,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primaryColorLight),
      child: child,
    );
  }
}
