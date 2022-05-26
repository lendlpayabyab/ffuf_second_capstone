import 'package:flutter/material.dart';

class TextBuilder extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final Color? color;

  const TextBuilder ({
    Key? key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        color: color,
      ),
    );
  }
}

TextBuilder textHeader1({required String text, Color? color}) {
  return TextBuilder(
    text: text,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: color,
  );
}

TextBuilder textHeader2({required String text, Color? color}) {
  return TextBuilder(
    text: text,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: color,
  );
}

TextBuilder subText({required String text, Color? color}) {
  return TextBuilder(
    text: text,
    fontSize: 12,
    color: color,
  );
}
