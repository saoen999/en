// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meetup/helpers/appcolors.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAnAccountCheck({
    Key? key, 
    required this.login, 
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't Have An Account ? " : "Already Have An Account ? ",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Nunito-Bold',
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Create Now!":"Sign In",
            style: TextStyle(
              color: AppColors.MAIN_COLOR,
              fontFamily: 'Nunito-Bold',
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
