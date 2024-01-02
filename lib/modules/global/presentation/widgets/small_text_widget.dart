import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  const SmallText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          overflow: TextOverflow.ellipsis),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
