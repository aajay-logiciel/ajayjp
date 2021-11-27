import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/CommonFiles/icon_position.dart';
import 'package:jp_ui_kit/Text/fontfamily.dart';
import 'package:jp_ui_kit/Text/fontweight.dart';
import 'package:jp_ui_kit/Text/index.dart';
import 'package:jp_ui_kit/Text/textsize.dart';

class JPNRadioButton extends StatefulWidget {
  const JPNRadioButton(
      {
      this.disabled = false,
      this.text,
      this.textSize = JPTextSize.heading4,
      this.textColor = JPColor.black,
      this.fontFamily = JPFontFamily.roboto,
      this.fontWeight = JPFontWeight.regular,
      this.isLabelClickable = true,
      this.jpPosition = JPPosition.end,
      Key? key})
      : super(key: key);
  final String? text;
  final JPTextSize? textSize;
  final Color? textColor;
  final JPFontFamily? fontFamily;
  final JPFontWeight? fontWeight;
  final bool disabled;
  final bool isLabelClickable;
  final JPPosition jpPosition;

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
    Widget getRadio(){
      return Container(
        decoration: BoxDecoration(
          color: JPColor.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: JPColor.primary,
            width: 2,
          )
        ),
        height: 18,
        width: 18,
        child: const Icon(Icons.circle,color: JPColor.primary,size: 12,),
      );
    }

    Widget getText(){
      return const JPText(text: 'label');
    }

    return InkWell(
      child: FittedBox(child: Row(
        children: [
          getRadio(),
          const SizedBox(width: 8,),
          getText(),
        ],
      )),
    );
  }
}
