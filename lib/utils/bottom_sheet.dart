import 'package:flutter/material.dart';
import 'package:stock_x_ui/utils/custom_text.dart';

void openBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 450,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10)
                    .copyWith(top: 15, bottom: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CText(
                      text: 'Select Size',
                      fontSize: 16,
                    ),
                    Row(
                      children: [
                        CText(
                          text: 'Size Chart',
                          fontSize: 16,
                          color: Colors.green.shade900,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green.shade900,
                          size: 16,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Divider(
                color: Colors.black12,
                thickness: 2,
              ),
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.green.shade900, width: 2),
                      color: Colors.green.withOpacity(0.15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CText(
                          text: 'All',
                          fontSize: 16,
                        ),
                        CText(
                          text: '£167',
                          color: Colors.green.shade900,
                          fontSize: 14,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      });
}
