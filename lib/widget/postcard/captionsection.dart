import 'package:flutter/material.dart';

class captionSection extends StatelessWidget {
  const captionSection({
    Key? key,
    required this.postCaption,
  }) : super(key: key);

  final String postCaption;

  @override
  Widget build(BuildContext context) {
    return postCaption != null && postCaption != ""
        ? Container(
            width: 400,
            padding: EdgeInsets.only(bottom: 5, left: 0, right: 0),
            child: Text(
              postCaption == null ? "N/A" : postCaption,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        : SizedBox();
  }
}