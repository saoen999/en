// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meetup/screens/login/login_screen.dart';
import 'package:meetup/widget/already_have_an_account_check.dart';
import 'package:meetup/widget/button/rounded_button.dart';
import 'package:meetup/widget/rounded_pasword_field.dart';

import '../../../widget/rounded_input_field.dart';

class body extends StatelessWidget {
  const body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: size.height,
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 100, bottom: 100),
                child: Text(
                  "Sign Up!",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontFamily: 'Nunito-Bold',
                    fontWeight: FontWeight.bold,
                  ),
                )
              ),
              RoundedInputField(
                hintText: "Username",
                icon: Icons.person,
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Email",
                icon: Icons.mail,
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              SizedBox(
                height: 15,
              ),
              rounded_button(
                text: "Create An Account",press: (){} ),
              SizedBox(
                height: 250,
              ),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    )
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
