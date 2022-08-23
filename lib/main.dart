import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meetup/helpers/appcolors.dart';
import 'package:meetup/screens/notification_user.dart';
import 'package:meetup/screens/profile_user.dart';
import 'package:meetup/screens/profile_userTest.dart';
import 'package:meetup/screens/splash_screen.dart';
import 'package:meetup/screens/testAppbar_Nav.dart';
import 'package:meetup/screens/user2.dart';
import 'package:meetup/screens/user_ui.dart';
import 'package:meetup/screens/welcome/components/body.dart';
import 'screens/friend.dart';
import 'package:meetup/screens/profile_user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MeetUp',
        theme: ThemeData(
          primaryColor: AppColors.MAIN_COLOR,
          scaffoldBackgroundColor: Color.fromARGB(255, 224, 232, 234),
        ),
        home: user2());
  }
}
