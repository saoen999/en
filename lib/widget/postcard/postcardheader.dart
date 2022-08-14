import 'package:flutter/material.dart';

import 'avatar.dart';

class postCardHeader extends StatelessWidget {
  const postCardHeader({
    Key? key,
    required this.pics,
    required this.name,
    required this.time,
  }) : super(key: key);

  final String pics;
  final String name;
  final String time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // dense: true,
      leading: Avatar(pic: pics, displayStatus: true),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      subtitle: Row(
        children: [
          Text(time != null ? time : "N/A"),
          SizedBox(width: 10),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}