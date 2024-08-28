import 'dart:ui';

import 'package:flutter/material.dart';

class SubjectCategory extends StatelessWidget {
  SubjectCategory(this.title, this.number, this.colorBg, this.colorFont,
      {super.key});

  String title;
  String number;
  int colorBg;
  int colorFont;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 120,
      height: 110,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(colorBg),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(colorFont),
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 8),
          Text(
            number,
            style: TextStyle(
              color: Color(colorFont),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
    ;
  }
}
