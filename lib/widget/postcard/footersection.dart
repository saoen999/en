// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'displaytext.dart';

class footerSection extends StatelessWidget {
  const footerSection({
    Key? key,
    required this.like,
    required this.comments,
    required this.share,
  }) : super(key: key);

  final String like;
  final String comments;
  final String share;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                displayText(label: like),
                // Text(
                //   "liked By kai and 9 others",
                //   style: TextStyle(fontSize: 15),
                // ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: comments),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Comments"),
                SizedBox(
                  width: 10,
                ),
                displayText(label: share),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Share"),
                // Avatar(
                //   pic: pics,
                //   displayStatus: false,
                //   width: 25,
                //   height: 25,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}