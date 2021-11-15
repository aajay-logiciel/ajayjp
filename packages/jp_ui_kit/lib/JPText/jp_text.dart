import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPText/jp_fontfamily.dart';
import 'package:jp_ui_kit/JPText/jp_fontweight.dart';
import 'package:jp_ui_kit/JPText/jp_textsize.dart';
import 'package:jp_ui_kit/JPCommonFiles/jp_colors.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class JPText extends StatelessWidget {
  const JPText({
    required this.text,
    this.textSize=JPTextSize.heading_4,
    this.fontfamily=JPFontFamily.roboto,
    this.fontWeight=JPFontWeight.regular,
    this.textcolor=JPColor.black,
    Key? key}) : super(key: key);


  final String text;
  final JPTextSize? textSize;
  final JPFontFamily? fontfamily;
  final JPFontWeight? fontWeight;
  final Color? textcolor;


  @override
  Widget build(BuildContext context) {

    double getTextSize(){
      switch(textSize){
      case JPTextSize.heading_1:
        return 20;
      case JPTextSize.heading_2:
        return 18;
      case JPTextSize.heading_3:
        return 16;
      case JPTextSize.heading_4:
        return 14;
      case JPTextSize.heading_5:
        return 12;
      case JPTextSize.heading_6:
        return 11;
      default:
        return 14;
      }
    }

    String getFontFamily(){
      switch(fontfamily){
      case JPFontFamily.roboto:
        return 'Roboto';
      case JPFontFamily.montserrat:
        return 'Montserrat';
      default:
        return 'Roboto';
      }
    }

    FontWeight getFontWeight(){
      switch(fontWeight){
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
        color: textcolor,
        fontSize: getTextSize(),
        fontFamily: getFontFamily(),
        package: 'jp_ui_kit',
        fontWeight: getFontWeight(),
      ),
    );
  }
}
