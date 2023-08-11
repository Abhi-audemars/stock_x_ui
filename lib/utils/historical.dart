// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:stock_x_ui/utils/custom_text.dart';

class HisotricalData extends StatelessWidget {
  final String text;
  final String price;
  const HisotricalData({
    Key? key,
    required this.text,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CText(
            text: text,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          CText(
            text: price,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          )
        ],
      ),
    );
  }
}
