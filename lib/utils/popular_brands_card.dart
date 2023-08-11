// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:stock_x_ui/utils/custom_text.dart';

class PopularBrands extends StatelessWidget {
  final String imageUrl;
  final String brandName;
  final String? brandLogo;
  final double? iHeight;
  final double? iWidth;
  const PopularBrands({
    Key? key,
    required this.imageUrl,
    required this.brandName,
    this.brandLogo = '',
    this.iHeight = 14,
    this.iWidth = 14,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 90,
          width: 160,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 160,
          height: 23,
          padding: const EdgeInsets.symmetric(horizontal: 6),
          color: const Color.fromARGB(255, 247, 247, 247),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CText(
                text: brandName,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              brandLogo == ''
                  ?const SizedBox()
                  : Image.network(
                      brandLogo!,
                      height: iHeight,
                      width: iWidth,
                    )
            ],
          ),
        )
      ],
    );
  }
}
