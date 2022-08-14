import 'package:flutter/material.dart';

class displayText extends StatelessWidget {
  const displayText({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(color: Colors.grey[700], fontSize: 15),
    );
  }
}