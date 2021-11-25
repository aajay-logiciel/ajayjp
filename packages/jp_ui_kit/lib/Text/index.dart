import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/Text/fontfamily.dart';
import 'package:jp_ui_kit/Text/fontweight.dart';
import 'package:jp_ui_kit/Text/textsize.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class JPText extends StatelessWidget {
  const JPText(
      {required this.text,
      this.textSize = JPTextSize.heading4,
      this.fontFamily = JPFontFamily.roboto,
      this.fontWeight = JPFontWeight.regular,
      this.textColor = JPColor.black,
      this.overflow ,
      this.textAlign = TextAlign.center,
        this.maxLine=1,
        this.textDecoration,
      Key? key})
      : super(key: key);

  /// Defines text of a text.
  final String text;

  /// Defines textSize of a text.
  final JPTextSize? textSize;

  /// Defines fontFamily of a text.
  final JPFontFamily? fontFamily;

  /// Defines fontWeight of a text.
  final JPFontWeight? fontWeight;

  /// Defines textColor of a text.
  final Color? textColor;

  /// Defines overflow of a text.
  final TextOverflow? overflow;

  /// Defines textAlign of a text.
  final TextAlign textAlign;
  /// Defines maxLine of a text.
  final int maxLine;

  ///Defines text decoration
  final TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    /// Return double  textSize of a text and default textSize is [JPTextSize.heading4]
    double getTextSize() {
      switch (textSize) {
        case JPTextSize.heading1:
          return 20;
        case JPTextSize.heading2:
          return 18;
        case JPTextSize.heading3:
          return 16;
        case JPTextSize.heading4:
          return 14;
        case JPTextSize.heading5:
          return 12;
        case JPTextSize.heading6:
          return 11;
        default:
          return 14;
      }
    }

    /// Return  fontFamily of a text and default textSize is [JPFontFamily.roboto]
    String getFontFamily() {
      switch (fontFamily) {
        case JPFontFamily.roboto:
          return 'Roboto';
        case JPFontFamily.montserrat:
          return 'Montserrat';
        default:
          return 'Roboto';
      }
    }

    /// Return  fontWeight of a text and default textSize is [JPFontFamily.regular]
    FontWeight getFontWeight() {
      switch (fontWeight) {
        case JPFontWeight.regular:
          return FontWeight.w400;
        case JPFontWeight.medium:
          return FontWeight.w500;
        case JPFontWeight.bold:
          return FontWeight.w700;
        default:
          return FontWeight.w400;
      }
    }

    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      style: TextStyle(
        color: textColor,
        fontSize: getTextSize(),
        fontFamily: getFontFamily(),
        package: 'jp_ui_kit',
        fontWeight: getFontWeight(),
        overflow: overflow,
        decoration: textDecoration,
      ),
    );
  }
}
