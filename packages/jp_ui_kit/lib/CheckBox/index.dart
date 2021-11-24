import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/Text/fontweight.dart';
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
      Key? key})
      : super(key: key);

  /// Defines enabled or disabled of a checkbox.
  final bool? disabled;

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

  @override
  _JPCheckboxState createState() => _JPCheckboxState();
}

class _JPCheckboxState extends State<JPCheckbox> {
  late bool selected;
  late String text;

  getOnTab() {
    return setState(() {
      selected = !selected;
    });
  }

  @override
  void initState() {
    selected = widget.selected!;
    text = widget.text ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ///Defines border of a checkbox.
    getBorder() {
      return Border.all(
          color:
              widget.disabled! ? JPColor.black.withOpacity(0.5) : JPColor.black,
          width: 1);
    }

    ///Defines text widget of a checkbox.
    Widget getText() => JPText(
          text: text,
          textColor: widget.disabled == false
              ? widget.textColor
              : widget.textColor!.withOpacity(0.4),
          textSize: widget.textSize,
          fontWeight: widget.fontWeight,
          fontFamily: widget.fontFamily,
        );

    ///Defines checkbox widget of a checkbox.
    ///InkWell is used when isTextClickable method of a checkbox.
    Widget getCheckBox() => InkWell(
          borderRadius: BorderRadius.circular(50),
          splashColor: JPColor.primary.withOpacity(0.1),
          hoverColor: JPColor.primary.withOpacity(0.1),
          onTap: widget.disabled!
              ? null
              : widget.isTextClickable!
                  ? null
                  : getOnTab,
          child: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: AnimatedContainer(
                height: 17.0,
                width: 17.0,
                curve: Curves.linear,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: selected
                      ? Colors.white
                      : widget.disabled!
                          ? JPColor.primary.withOpacity(0.5)
                          : JPColor.primary,
                  border: selected ? getBorder() : null,
                ),
                duration: const Duration(milliseconds: 1),
                child: const Center(
                    child: Icon(
                  Icons.check,
                  color: JPColor.white,
                  size: 14,
                )),
              ),
            ),
          ),
        );

    ///Defines row children widget
    getRowChildren() {
      return [
        getCheckBox(),
        const SizedBox(
          width: 8.5,
        ),
        getText(),
        const SizedBox(
          width: 8.5,
        ),
      ];
    }

    ///Defines Fitted box Widget
    getFittedBoxData() {
      if (text == '') {
        return getCheckBox();
      }
      return Row(
        children: getRowChildren(),
      );
    }

    return InkWell(
      borderRadius: BorderRadius.circular(50),
      splashColor: JPColor.primary.withOpacity(0.1),
      hoverColor: JPColor.primary.withOpacity(0.1),
      onTap: widget.disabled!
          ? null
          : widget.isTextClickable!
              ? getOnTab
              : null,
      child: FittedBox(child: getFittedBoxData()),
    );
  }
}
