// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meetup/assets/meet_icon.dart';
import 'package:meetup/screens/welcome/welcome_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer( 
      Duration(seconds: 3),
      ()=> Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen() )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: const Icon(MeetLogo.Logo, color: Colors.cyan, size: 100),
      )
    );
  }
}