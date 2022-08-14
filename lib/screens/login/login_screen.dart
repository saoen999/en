// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:meetup/screens/login/components/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: body(),
    );
  }
}


