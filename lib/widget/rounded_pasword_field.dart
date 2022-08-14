// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      obscureText: true,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: 'Password',
        icon: Icon(
          Icons.lock,
          color: Colors.black,
        ),
        suffixIcon: Icon(
          Icons.visibility,
          color: Colors.black,
        ),
        border: InputBorder.none,
      ),
    ));
  }
}