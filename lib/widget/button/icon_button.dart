
import 'package:flutter/material.dart';
import 'package:meetup/helpers/appcolors.dart';

class Custom_Icon_Button extends StatelessWidget {
  final Widget icon;
  final VoidCallback? press;
  final String? tooltip;
  final double? iconsize;
  final EdgeInsetsGeometry padding;
  const Custom_Icon_Button({
    Key? key,
    this.padding = const EdgeInsets.all(10),
    required this.iconsize,
    required this.tooltip,
    required this.icon,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: padding,
      tooltip: tooltip,
      onPressed: press,
      icon: icon,
      iconSize: iconsize,
      highlightColor: AppColors.MAIN_COLOR,
    );
  }
}
