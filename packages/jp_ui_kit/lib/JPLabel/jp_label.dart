import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/Text/fontweight.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

import 'jp_label_type.dart';

class JPLabels extends StatefulWidget {
  const JPLabels(
      {this.text = 'Label',
      this.jpLabelType = JPLabelType.success,
      this.textColor = JPColor.white,
      this.backgroundColor,
      this.fontFamily = JPFontFamily.roboto,
      this.textSize = JPTextSize.heading5,
      this.fontWeight = JPFontWeight.regular,
        this.labelWidth=50.0,
        this.labelHeight=24.0,
      Key? key})
      : super(key: key);

  final JPLabelType jpLabelType;
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final JPFontFamily fontFamily;
  final JPTextSize textSize;
  final JPFontWeight fontWeight;
  final double? labelWidth;
  final double? labelHeight;

  @override
  State<JPLabels> createState() => _JPLabelsState();
}

class _JPLabelsState extends State<JPLabels> {
  JPLabelType? jpLabelType;
  Color? backgroundColor;
  Color? textColor;

  getTextColor() {
    if (jpLabelType == JPLabelType.lightGray) {
      textColor = JPColor.tertiary;
    } else {
      textColor = JPColor.white;
    }
  }

  @override
  void initState() {
    backgroundColor = widget.backgroundColor;
    textColor = widget.textColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getBackgroundColor() {
      switch (jpLabelType) {
        case JPLabelType.success:
          return JPColor.success;
        case JPLabelType.warning:
          return JPColor.warning;
        case JPLabelType.darkGray:
          return JPColor.darkGray;
        case JPLabelType.lightGray:
          return JPColor.lightGray;
        default:
          return JPColor.success;
      }
    }

    return Container(
      width: 50.0,
      height: 24.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: backgroundColor ?? getBackgroundColor(),
      ),
      child: Center(
        child: getTextWidget(),
      )
    );
  }
  getTextWidget() {
    return JPText(
      text: widget.text,
      fontWeight: widget.fontWeight,
      fontFamily: widget.fontFamily,
      textColor: textColor ?? getTextColor(),
      textSize: widget.textSize,
    );
  }
}
