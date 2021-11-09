import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPText/font.dart';
import 'package:jp_ui_kit/JPText/text_type.dart';
import 'package:jp_ui_kit/JPText/textsize.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class JPText extends StatelessWidget {
  const JPText({ required this.text,
    this.textSize=TextSize.Heading_1,
    this.font=Font.Roboto,
    this.type=TextType.REGULAR,
    this.textcolor=JPColor.BLACK,
    Key? key}) : super(key: key);


  final String text;
  final TextSize? textSize;
  final Font? font;
  final TextType? type;
  final Color textcolor;


  @override
  Widget build(BuildContext context) {
double gettextsize(){
  if(textSize==TextSize.Heading_1){
    return 20;
  }
  else if(textSize==TextSize.Heading_2){
    return 18;
  }
  else if(textSize==TextSize.Heading_3){
    return 16;
  }
  else if(textSize==TextSize.Heading_4){
    return 14;
  }
  else if(textSize==TextSize.Heading_5){
    return 12;
  }
  else if(textSize==TextSize.Heading_6){
    return 11;
  }
  else{
    return 14;
  }
}
String getfont(){
  if(font==Font.Montserrat){
    return 'Montserrat';
  }
  else{
    return 'Roboto';
  }
}
FontWeight getfontweight(){
  if(type==TextType.REGULAR){
    return FontWeight.w400;
  }
  else if(type==TextType.MEDIUM){
    return FontWeight.w500;
  }
  else if(type==TextType.BOLD&&font==Font.Roboto){
    return FontWeight.w700;
  }
  else{
    return FontWeight.w400;
  }
}
    return Text(
         text,
      style: TextStyle(
        color: textcolor,
        fontSize: gettextsize(),
        fontFamily: getfont(),
        fontWeight: getfontweight(),
        fontStyle: FontStyle.normal,
        overflow: TextOverflow.ellipsis
      ),
    );
  }
}
