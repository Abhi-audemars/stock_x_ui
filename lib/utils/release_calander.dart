// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock_x_ui/utils/custom_text.dart';

class ReleaseCalander extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String date;
  final String month;
  const ReleaseCalander({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.date,
    required this.month,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 260,
        width: 170,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CText(
                text: '$month | $date',
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
              Image.network(
                imageUrl,
                fit: BoxFit.cover,
                height: 120,
                width: 145,
              ),
              Text(
                name,
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const SizedBox(height: 5),
              OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  side: MaterialStatePropertyAll(
                    BorderSide(color: Colors.green.shade900, width: 2),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  minimumSize: MaterialStatePropertyAll(
                    Size(MediaQuery.of(context).size.width, 55),
                  ),
                ),
                child: CText(
                  text: 'Bid',
                  color: Colors.green.shade900,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
