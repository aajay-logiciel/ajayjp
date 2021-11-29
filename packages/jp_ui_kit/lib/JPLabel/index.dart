import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/CommonFiles/fontweight.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

import 'label_type.dart';

class JPLabel extends StatefulWidget {
  const JPLabel(
      { this.text = 'Label',
      this.labelType = JPLabelType.success,
      this.textColor = JPColor.white,
      this.backgroundColor,
      this.fontFamily = JPFontFamily.roboto,
      this.textSize = JPTextSize.heading5,
      this.fontWeight = JPFontWeight.regular,
      Key? key})
      : super(key: key);

  /// Defines label type [success, warning, darkGray, lightGray] of a label.
  final JPLabelType labelType;

  /// Defines text of a label.
  final String text;

  /// Defines textColor [JPColor.white] of a label.
  final Color? textColor;

  /// Defines backgroundColor of a label.
  /// It it is not null it will neglect the effect of labelType of a label.
  final Color? backgroundColor;

  /// Defines fontFamily [JPFontFamily.roboto] of text of a label.
  final JPFontFamily fontFamily;

  /// Defines fontSize [JPTextSize.heading4] of text of a label.
  final JPTextSize textSize;

  /// Defines fontWeight [JPFontWeight.regular] of text of a label.
  final JPFontWeight fontWeight;

  @override
  State<JPLabel> createState() => _JPLabelState();
}

class _JPLabelState extends State<JPLabel> {
  JPLabelType? labelType;
  Color? backgroundColor;
  Color? textColor;

  @override
  void initState() {
    backgroundColor = widget.backgroundColor;
    textColor = widget.textColor;
    labelType = widget.labelType;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getBackgroundColor() {
      switch (labelType) {
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

    getTextColor() {
      if (labelType == JPLabelType.lightGray) {
        return textColor = JPColor.tertiary;
      }
      return textColor = JPColor.white;
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

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        constraints: const BoxConstraints(minWidth: 50.0),
        height: 24.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: backgroundColor ?? getBackgroundColor(),
        ),
        child: FittedBox(
          child: Center(
            child: getTextWidget(),
          ),
        ));
  }
}
