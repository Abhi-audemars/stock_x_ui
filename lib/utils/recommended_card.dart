// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendedCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String askPrice;
  final String lastSaleP;
  const RecommendedCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.askPrice,
    required this.lastSaleP,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 260,
        width: 165,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.contain,
                  height: 120,
                  width: 120,
                ),
              ),
              Text(
                // 'Nike Dunk Low Photon Dust(Women Sneakers)',
                name,
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const SizedBox(height: 9),
              Text(
                'Lowest Ask',
                style: GoogleFonts.roboto(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '€$askPrice',
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                // width: 115,
                padding: const EdgeInsets.symmetric(vertical: 6),
                color: const Color.fromARGB(255, 247, 247, 247),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          lastSaleP,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          // TextStyle(
                          //     fontWeight: FontWeight.bold, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
