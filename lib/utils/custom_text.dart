// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  const CText({
    Key? key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 18,
    this.fontWeight = FontWeight.w500,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
          color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
