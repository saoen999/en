// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meetup/widget/postcard/postcardheader.dart';
import 'captionsection.dart';
import 'footersection.dart';
import 'imagesection.dart';
import 'interactionsection.dart';

class postcard extends StatelessWidget {
  final String pics;
  final String name;
  final String time;
  final String postCaption;
  final String postImage;
  final String like;
  final String comments;
  final String share;
  // final bool varifiedpost;
  const postcard({
    Key? key,
    required this.pics,
    required this.name,
    required this.time,
    required this.share,
    required this.postImage,
    required this.postCaption,
    required this.like,
    required this.comments,
    // required this.varifiedpost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          postCardHeader(pics: pics, name: name, time: time),
          captionSection(postCaption: postCaption),
          imageSection(postImage: postImage),
          footerSection(like: like, comments: comments, share: share),
          Divider(
            color: Colors.grey[300],
            thickness: 2,
            height: 2,
            indent: 30,
            endIndent: 30,
          ),
          InteractionSection(),
        ],
      ),
    );
  }
}
