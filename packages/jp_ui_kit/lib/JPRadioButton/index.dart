import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/Text/fontfamily.dart';
import 'package:jp_ui_kit/Text/fontweight.dart';
import 'package:jp_ui_kit/Text/index.dart';
import 'package:jp_ui_kit/Text/textsize.dart';

class JPNRadioButton extends StatefulWidget {
  const JPNRadioButton({
    this.disabled = false,
    this.text,
    this.textSize = JPTextSize.heading4,
    this.textColor = JPColor.black,
    this.fontFamily = JPFontFamily.roboto,
    this.fontWeight = JPFontWeight.regular,
    Key? key}) : super(key: key);
  final String? text;
  final JPTextSize? textSize;
  final Color? textColor;
  final JPFontFamily? fontFamily;
  final JPFontWeight? fontWeight;
  final bool disabled;
  @override
  _JPNRadioButtonState createState() => _JPNRadioButtonState();
}

class _JPNRadioButtonState extends State<JPNRadioButton> {
  late String text;
  Color? textColor;
  @override
  void initState() {
    text = widget.text ?? '';
    textColor = widget.textColor;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    JPText t = JPText(
      text: text,
      textColor: widget.disabled == false ?  textColor : textColor!.withOpacity(0.4),
      textSize: widget.textSize,
      fontWeight: widget.fontWeight,
      fontFamily: widget.fontFamily,
    );

    getContainerData(){
      
    }

    return Container(
      child: getContainerData(),
    );
  }
}
