// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meetup/screens/friend.dart';
import 'package:meetup/screens/newsfeed.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int pressed = 0;

  @override
  Widget build(BuildContext context) {
    if (pressed == 1) {
      return newsfeed_screen();
    }
    if (pressed == 2) {
      return FollowingPage();
    }

    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: size.width * 0.95,
        height: size.height * 0.1,
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5.0,
                offset: Offset(1.5, 1.5),
                // shadow direction: bottom right
              )
            ],
            borderRadius: BorderRadius.circular(20.0),
            color: Color(0xffeefcfd),
          ),
          height: 60,
          child: Container(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => setState(() => pressed = 1),
                    child: Container(
                      child: Icon(
                        Icons.home,
                        size: 30,
                        color: (pressed == 1)
                            ? Color(0xff2677ed)
                            : Color(0xff97a5bf),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => pressed = 2),
                    child: Container(
                      child: Icon(
                        Icons.list,
                        size: 30,
                        color: (pressed == 2)
                            ? Color(0xff2677ed)
                            : Color(0xff97a5bf),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => pressed = 3),
                    child: Container(
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: (pressed == 3)
                            ? Color(0xff2677ed)
                            : Color(0xff97a5bf),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => pressed = 4),
                    child: Container(
                        child: Icon(
                      Icons.notifications,
                      size: 30,
                      color: (pressed == 4)
                          ? Color(0xff2677ed)
                          : Color(0xff97a5bf),
                    )),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => pressed = 5),
                    child: Container(
                      child: Icon(
                        Icons.person,
                        size: 30,
                        color: (pressed == 5)
                            ? Color(0xff2677ed)
                            : Color(0xff97a5bf),
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
