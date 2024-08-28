import 'package:flutter/material.dart';

class Servicescategories extends StatelessWidget {
  Servicescategories(this.image, this.text, {super.key});

  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFF2A2D40),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      width: 100,
      height: 110,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          ImageIcon(
            AssetImage("assets/images/${image}.png"),
            color: Color(0xc860708f),
            size: 30,
          ),
          SizedBox(height: 12),
          Text(
            text,
            style: TextStyle(color: Color(0xff60708F), fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
    ;
  }
}
