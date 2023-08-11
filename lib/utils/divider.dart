// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Divider1 extends StatelessWidget {
 final Color? color;
   const Divider1({
    Key? key,
    this.color=Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.5,
      color: color,
    );
  }
}
