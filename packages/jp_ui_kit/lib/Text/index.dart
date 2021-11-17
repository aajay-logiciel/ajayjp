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
        this.overflow = TextOverflow.ellipsis,
      Key? key})
      : super(key: key);

  final String text;
  final JPTextSize? textSize;
  final JPFontFamily? fontFamily;
  final JPFontWeight? fontWeight;
  final Color? textColor;
  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
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
      style: TextStyle(
        color: textColor,
        fontSize: getTextSize(),
        fontFamily: getFontFamily(),
        package: 'jp_ui_kit',
        fontWeight: getFontWeight(),
        overflow: overflow,
      ),
    );
  }
}
