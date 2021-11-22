import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/CommonFiles/icon_position.dart';
import 'package:jp_ui_kit/Text/fontweight.dart';
import 'package:jp_ui_kit/Text/index.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class JPNCheckbox extends StatefulWidget {
  const JPNCheckbox({
    this.checkBoxValue = false,
    this.jpPosition = JPPosition.end,
    this.checkColor = JPColor.white,
    this.activeColor = JPColor.primary,
    this.text,
    this.textSize = JPTextSize.heading4,
    this.textColor = JPColor.black,
    this.fontFamily = JPFontFamily.roboto,
    this.fontWeight = JPFontWeight.regular,
    this.disabled = false,
    Key? key,
  }) : super(key: key);


  /// Defines enabled or disabled of a checkbox.
  final bool disabled;
  /// Defines checkbox is clicked or not.
  final bool checkBoxValue;
  /// Defines text position with respect to checkbox.
  final JPPosition? jpPosition;
  /// Defines checkColor of a checkbox.
  final Color? checkColor;
  /// Defines activeColor of a checkbox.
  final Color? activeColor;
  /// Defines text of a checkbox.
  final String? text;
  /// Defines textSize of a checkbox.
  final JPTextSize? textSize;
  /// Defines textColor of a checkbox.
  final Color? textColor;
  /// Defines fontFamily of a checkbox.
  final JPFontFamily? fontFamily;
  /// Defines fontWeight of a checkbox.
  final JPFontWeight? fontWeight;


  @override
  _JPNCheckboxState createState() => _JPNCheckboxState();
}

class _JPNCheckboxState extends State<JPNCheckbox> {
  late String text;
  Color? textColor;
  Color? activeColor;
  bool? checkBoxValue;

  @override
  void initState() {
    text = widget.text ?? '';
    checkBoxValue = widget.checkBoxValue;
    textColor = widget.textColor;
    activeColor = widget.activeColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    /// Defines onChanged function of a checkbox.
    getOnChanged() {
      return (value) {
        setState(() {
          checkBoxValue = value!;
        });
      };
    }

    Checkbox cb = Checkbox(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      value: checkBoxValue,
      onChanged: widget.disabled ? null :getOnChanged(),
      checkColor: widget.checkColor,
      activeColor:
          widget.disabled ? activeColor!.withOpacity(0.4) : activeColor,
    );

    JPText  t = JPText(
      text: text,
      textColor:
      widget.disabled == false ? textColor : textColor!.withOpacity(0.4),
      textSize: widget.textSize,
      fontWeight: widget.fontWeight,
      fontFamily: widget.fontFamily,
    );

    getContainerData() {
      if (widget.jpPosition == JPPosition.start) {
        return Row(
          children: [
            t,
            const SizedBox(
              width: 8.5,
            ),
            cb,
          ],
        );
      }
      return Row(
        children: [
          cb,
          const SizedBox(
            width: 8.5,
          ),
          t,
        ],
      );
    }

    return Container(
      child: getContainerData(),
    );
  }
}
