import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPCommonFiles/jp_colors.dart';
import 'package:jp_ui_kit/JPText/jp_fontweight.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class JPBadges extends StatelessWidget {
  const JPBadges({this.backgroundcolor= JPColor.primary,
    required this.text,
    this.textcolor=JPColor.white,

    Key? key}) : super(key: key);

  final Color? backgroundcolor ;
  final String text;
  final Color? textcolor;
  @override
  Widget build(BuildContext context) {

    return Container(
      constraints: const BoxConstraints(
           minWidth: 18,maxWidth: double.infinity,maxHeight: 18,minHeight: 18),
      decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(50)
      ),
      child:  Padding(
          padding: EdgeInsets.symmetric(vertical: 2.0,horizontal: 5.0),
            child:
        JPText(
          text: text,
          textSize: JPTextSize.heading_5,
          textcolor: textcolor,
        )
          ),
    );
  }
}
