// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meetup/widget/postcard/avatar.dart';

class  InteractionSection extends StatelessWidget {
  const InteractionSection ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.thumb_up_outlined),
                iconSize: 28,
                color: Colors.black,
              ),
              IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.comment_outlined),
                iconSize: 28,
                color: Colors.black,
              ),
              SizedBox(width: 8,),
              Avatar(
                pic: "assets/images/Unknown.jpg",
                displayStatus: false,
                width: 30,
                height: 30,
              ),
            ],
          ),
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.share_outlined),
            iconSize: 28,
            color: Colors.black,
          ),
        ]
      ),
    );
  }
}