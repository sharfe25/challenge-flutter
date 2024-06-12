import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final IconData icon;
  final double? iconSize;

  const IconButtonWidget(
      {Key? key,
      required this.onPressed,
      this.backgroundColor,
      this.iconSize,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: iconSize ?? 20,
      color: backgroundColor,
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}
