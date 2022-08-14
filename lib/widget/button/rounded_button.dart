// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../helpers/appcolors.dart';

class rounded_button extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const rounded_button({
    required this.text,
    Key? key, 
    required this.press, 
    this.color = AppColors.MAIN_COLOR, 
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.055,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: FlatButton(
          // padding: EdgeInsets.symmetric(vertical: 13, horizontal: 20),
          onPressed: press,
          color: color,
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Nuntio-Bold',
              fontSize: 17,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
