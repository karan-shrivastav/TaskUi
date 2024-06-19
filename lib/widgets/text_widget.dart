import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final Color? color;
  final double? fontSize;
  const TextWidget({
    super.key,
    required this.text,
    this.fontWeight,
    this.color,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 12,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color??Colors.black,
        overflow: TextOverflow.ellipsis
      ),
    );
  }
}
