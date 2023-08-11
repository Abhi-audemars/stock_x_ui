// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItems extends StatelessWidget {
  final String imagePath;
  final String text;
  const CategoryItems({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color.fromARGB(31, 69, 69, 69),
          width: 120,
          height: 110,
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
            height: 120,
            width: 120,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: GoogleFonts.roboto(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
        ),
      ],
    );
  }
}
