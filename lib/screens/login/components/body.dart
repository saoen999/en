// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:meetup/screens/newsfeed.dart';
import 'package:meetup/screens/signup/signup_screen.dart';
import 'package:meetup/widget/already_have_an_account_check.dart';
import 'package:meetup/widget/rounded_input_field.dart';
import 'package:meetup/widget/rounded_pasword_field.dart';

import '../../../widget/button/rounded_button.dart';

class body extends StatelessWidget {
  const body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: size.height * 0.2,
              bottom: size.height * 0.14,
            ),
            child: Text(
              'Sign In Now!',
              style: TextStyle(
                fontFamily: 'Nunito-Bold',
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RoundedInputField(
            hintText: "Username",
            icon: Icons.person,
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          SizedBox(
            height: 15,
          ),
          rounded_button(text: "Log In",
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => newsfeed_screen(),
                )
              );
            },
          ),
          SizedBox(
            height: 250,
          ),
          AlreadyHaveAnAccountCheck(
            login: true,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

