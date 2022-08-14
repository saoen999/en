// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:meetup/assets/meet_icon.dart';

import 'package:meetup/widget/BottomNavbar.dart';
import 'package:meetup/widget/postcard/postcard.dart';

class newsfeed_screen extends StatefulWidget {
  newsfeed_screen({Key? key}) : super(key: key);

  @override
  State<newsfeed_screen> createState() => _newsfeed_screenState();
}

class _newsfeed_screenState extends State<newsfeed_screen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    floating: true,
                    expandedHeight: size.height * 0.085,
                    // forceElevated: innerBoxIsScrolled,
                    backgroundColor: Colors.white,
                    elevation: 0,
                    stretch: true,
                    title: Icon(MeetLogo.Logo, color: Colors.cyan, size: 60),
                    actions: <Widget>[
                      IconButton(
                        iconSize: 35,
                        onPressed: (){},
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        iconSize: 35,
                        onPressed: (){},
                        icon: Icon(
                          Icons.chat_bubble_outline_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
              ];
            },
            body: ListView(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              children: [
                postcard(
                  pics: "assets/images/p1.png", 
                  name: "Heng Sokchamrern", 
                  time: "10h", 
                  share: "2", 
                  postImage: "assets/images/post1.jpg", 
                  postCaption: "yoyooyo", 
                  like: "10", 
                  comments: "4"
                ),
                Divider(
                  thickness: 10,
                  color: Color.fromARGB(255, 224, 232, 234),
                ),
                postcard(
                  pics: "assets/images/p1.png", 
                  name: "Heng Sokchamrern", 
                  time: "10h", 
                  share: "2", 
                  postImage: "assets/images/iu.jpeg", 
                  postCaption: "yoyoyo", 
                  like: "10", 
                  comments: "4"
                ),
                Divider(
                  thickness: 10,
                  color: Color.fromARGB(255, 224, 232, 234),
                ),
                postcard(
                  pics: "assets/images/p1.png", 
                  name: "Heng Sokchamrern", 
                  time: "10h", 
                  share: "2", 
                  postImage: "assets/images/iu.jpeg", 
                  postCaption: "yoyoyo", 
                  like: "10", 
                  comments: "4"
                ),
              ],
            )
          ),
          BottomNavbar(),
        ],
      ),
    );
  }
}
