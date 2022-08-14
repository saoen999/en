// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';

import '../../helpers/appcolors.dart';
import '../../screens/signup/signup_screen.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 2.5, top: 2.5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: AppColors.MAIN_COLOR.withOpacity(0.2),
            highlightColor: AppColors.MAIN_COLOR.withOpacity(0.2),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUpScreen(),
                )
              );
            },
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text('Sign Up',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Nunito-SemiBold',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.MAIN_COLOR,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                border: Border.all(
                  color: AppColors.MAIN_COLOR,
                  width: 3,
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}