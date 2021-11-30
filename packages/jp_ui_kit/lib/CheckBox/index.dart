import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/CommonFiles/position.dart';
import 'package:jp_ui_kit/CommonFiles/fontweight.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class JPCheckbox extends StatefulWidget {
  const JPCheckbox(
      {this.disabled = false,
      this.isTextClickable = true,
      this.selected = false,
      this.text,
      this.textSize = JPTextSize.heading4,
      this.textColor = JPColor.black,
      this.fontFamily = JPFontFamily.roboto,
      this.fontWeight = JPFontWeight.regular,
      this.borderColor = JPColor.black,
      this.color = JPColor.primary,
      this.position = JPPosition.start,
        this.checkColor = JPColor.white,
        this.height = 17.0,
        this.width = 17.0,
      Key? key})
      : super(key: key);

  /// Defines enabled or disabled of a checkbox.
  final bool disabled;

  /// Defines text is clickable or not of a checkbox.
  final bool? isTextClickable;

  /// Defines selection of a checkbox.
  final bool? selected;

  /// Defines text of a checkbox.
  final String? text;

  /// Defines textColor[JPColor.primary] of a checkbox.
  final Color? textColor;

  /// Defines text fontFamily[JPFontFamily.roboto] of a checkbox.
  final JPFontFamily? fontFamily;

  /// Defines text fontWeight[JPFontWeight.regular] of a checkbox.
  final JPFontWeight? fontWeight;

  /// Defines text textSize[JPTextSize.heading4] of a checkbox.
  final JPTextSize? textSize;

  /// Defines borderColor of a checkbox.
  final Color? borderColor;

  /// Defines checkBoxColor of a checkbox.
  final Color? color;

  /// Defines checkbox position [JPPosition.start] with related to text of a checkbox.
  final JPPosition? position;

  /// Defines checkColor of a checkbox.
  final Color? checkColor;

  /// Defines width of a checkbox.
  final double? width;

  /// Defines height of a checkbox.
  final double? height;

  @override
  _JPCheckboxState createState() => _JPCheckboxState();
}

class _JPCheckboxState extends State<JPCheckbox> {
  late bool selected;
  late String? text;
  Color? splashColor;


   getTextTap() {
     setState(() {
       splashColor = JPColor.primary.withOpacity(0.1);
      selected = !selected;
    });
     Timer(
       const Duration(milliseconds: 300),
           () {
         setState(() {
           splashColor = JPColor.transparent;
         });
         return;
       },
     );
  }

  
  @override
  void initState() {
    selected = widget.selected!;
    text = widget.text;
    splashColor = JPColor.transparent;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    ///Defines border of a checkbox.
    getBorder() {
      return Border.all(
          color: widget.disabled
              ? widget.borderColor!.withOpacity(0.5)
              : widget.borderColor!,
          width: 1);
    }

    ///Defines text widget of a checkbox.
    Widget getText() {
      getColor() {
        return widget.disabled
            ? widget.textColor!.withOpacity(0.4)
            : widget.textColor;
      }

      return JPText(
        text: text!,
        textColor: getColor(),
        textSize: widget.textSize,
        fontWeight: widget.fontWeight,
        fontFamily: widget.fontFamily,
      );
    }

    ///Defines checkbox widget of a checkbox.
    ///InkWell is used when isTextClickable method of a checkbox.
    Widget getCheckBox() {

      getColor() {
        return selected
            ? (widget.disabled
                ? widget.color!.withOpacity(0.5)
                : widget.color)
            : Colors.white;
      }

      return InkWell(
        borderRadius: BorderRadius.circular(50),
        highlightColor: JPColor.primary.withOpacity(0.1),
        onTap:widget.disabled ?  null : (widget.isTextClickable! ? null :  getTextTap ),
        child: Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: splashColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: AnimatedContainer(
              height: widget.height,
              width: widget.width,
              curve: Curves.linear,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: getColor(),
                border: selected ? null : getBorder(),
              ),
              duration: const Duration(milliseconds: 1),
              child:  Center(
                  child: Icon(
                Icons.check,
                color: widget.checkColor,
                size: 14,
              )),
            ),
          ),
        ),
      );
    }


    /// Defines Fitted box Widget
    getFittedBoxData() {
      if (text == null) {
        return getCheckBox();
      }

      if (widget.position == JPPosition.end) {
        return Row(
          children: [
            getText(),
            const SizedBox(
              width: 8.5,
            ),
            getCheckBox(),
          ],
        );
      }
      return Row(
        children: [
          getCheckBox(),
          const SizedBox(
            width: 8.5,
          ),
          getText(),
        ],
      );
    }

    return GestureDetector(
      onTap: widget.disabled ?  null : (widget.isTextClickable! ? getTextTap : null)  ,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: FittedBox(
          fit: BoxFit.scaleDown,
            child: getFittedBoxData()),
      ),
    );
  }
}
