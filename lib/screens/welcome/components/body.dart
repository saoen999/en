// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meetup/assets/meet_icon.dart';
import 'package:meetup/helpers/appcolors.dart';
import 'package:meetup/widget/button/login_button.dart';
import 'package:meetup/widget/button/signup_button.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // this sizen provide total height and width of the screen
    return Background(
      child: Positioned(
        bottom: -10,
        child: Container(
          height: size.height * 0.6,
          width: size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.white,
                width: size.width * 0.01,
              )),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 45,
                ),
                Text(
                  'WELCOME',
                  style: TextStyle(
                    color: AppColors.MAIN_COLOR,
                    fontSize: 25,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Center(
                  child: MeetIcon(),
                ),
                SizedBox(
                  height: 70,
                ),
                SignUpButton(),
                LoginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MeetIcon extends StatelessWidget {
  const MeetIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: 90,
        height: 90,
        color: AppColors.LOGO_COLOR,
        child: Icon(MeetLogo.Logo,
            color: Color.fromARGB(255, 227, 240, 241), size: 65),
      ),
    );
  }
}
