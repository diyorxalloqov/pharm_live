import 'package:flutter/material.dart';

class MediumText extends StatelessWidget {
  final String text;
  const MediumText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis),
    );
  }
}