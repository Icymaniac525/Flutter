import 'package:flutter/material.dart';

class CustomTextview extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  const CustomTextview({
    super.key,
    required this.text,
    this.style,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style, textAlign: textAlign);
  }
}
