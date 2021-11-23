import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/CommonFiles/icon_position.dart';
import 'package:jp_ui_kit/Text/fontfamily.dart';
import 'package:jp_ui_kit/Text/fontweight.dart';
import 'package:jp_ui_kit/Text/index.dart';
import 'package:jp_ui_kit/Text/textsize.dart';

class JPNRadioButton extends StatefulWidget {
  const JPNRadioButton({
    required this.value,
    required this.groupValue,
    this.disabled = false,
    this.text,
    this.textSize = JPTextSize.heading4,
    this.textColor = JPColor.black,
    this.fontFamily = JPFontFamily.roboto,
    this.fontWeight = JPFontWeight.regular,
    this.isLabelClickable = true,
    this.jpPosition = JPPosition.end,
    Key? key}) : super(key: key);
  final String? text;
  final JPTextSize? textSize;
  final Color? textColor;
  final JPFontFamily? fontFamily;
  final JPFontWeight? fontWeight;
  final bool disabled;
  final bool isLabelClickable;
  final JPPosition jpPosition;
  final String value;
  final String groupValue;
  @override
  _JPNRadioButtonState createState() => _JPNRadioButtonState();
}

class _JPNRadioButtonState extends State<JPNRadioButton> {
  late String text;
  Color? textColor;
  late String value;
  late String groupValue;

  @override
  void initState() {
    text = widget.text ?? '';
    textColor = widget.textColor;
    value = widget.value;
    groupValue = widget.groupValue;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    /// Defines onChanged function of a checkbox.
    getOnChanged(value) {
      setState(() {
        groupValue = value;
      });
    }

    /// Defines onTap function of a checkbox.
   /* getOnTap() {
      setState(() {
        checkBoxValue = !checkBoxValue!;
      });
    }*/

    /// Checkbox Widget of a checkbox
    Radio radio = Radio(
        value: value,
        groupValue: groupValue,
        onChanged: getOnChanged);

    /// Label Widget of a checkbox
    JPText label = JPText(
      text: text,
      textColor:
      widget.disabled == false ? textColor : textColor!.withOpacity(0.4),
      textSize: widget.textSize,
      fontWeight: widget.fontWeight,
      fontFamily: widget.fontFamily,
    );

    Widget getContainerData() {
      List<Widget> rowChildren = <Widget>[
        radio,
        const SizedBox(
          width: 8.5,
        ),
        label,
        const SizedBox(
          width: 8.5,
        ),
      ];

      if (widget.jpPosition == JPPosition.start) {
        rowChildren = <Widget>[
          label,
          const SizedBox(
            width: 8.5,
          ),
          radio,
          const SizedBox(
            width: 8.5,
          ),
        ];
      }

      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: rowChildren,
      );
    }

    if (text == '') {
      return Container(
        child: getContainerData(),
      );
    }
    return InkWell(
    //  onTap: widget.isLabelClickable == false ? null : getOnTap,
      child: FittedBox(child: getContainerData()),
    );
  }
}


