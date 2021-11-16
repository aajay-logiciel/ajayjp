import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class JPBadges extends StatelessWidget {
  const JPBadges(
      {this.backgroundColor = JPColor.primary,
      required this.text,
      this.textColor = JPColor.white,
      Key? key})
      : super(key: key);

  final Color? backgroundColor;

  final String text;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
          minWidth: 18,
          maxWidth: double.infinity,
          maxHeight: 18,
          minHeight: 18),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(50)),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
          child: JPText(
            text: text,
            textSize: JPTextSize.heading5,
            textColor: textColor,
          )),
    );
  }
}
