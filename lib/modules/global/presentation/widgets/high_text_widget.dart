import 'package:flutter/material.dart';

class HighText extends StatelessWidget {
  final String text;
  const HighText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis),
    );
  }
}
