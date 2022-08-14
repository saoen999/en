import 'package:flutter/material.dart';

class imageSection extends StatelessWidget {
  const imageSection({
    Key? key,
    required this.postImage,
  }) : super(key: key);

  final String postImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }
}