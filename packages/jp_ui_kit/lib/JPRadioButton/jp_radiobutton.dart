import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/CommonFiles/orientation.dart';
import 'package:jp_ui_kit/CommonFiles/fontweight.dart';
import 'package:jp_ui_kit/Text/index.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

import 'jp_radio_data.dart';

class JPRadioButton extends StatefulWidget {
  /// Describe the list of JPRadioData Class variables labels and disabled of a radio box.
  final List<JPRadioData>? jpRadioData;

  /// Describe the orientation to display radio boxes.
  final JPOrientation? orientation;

  /// The color to use when a Radio button is checked.
  final Color? activeColor;

  /// Describe the textSize [JPTextSize.heading4] of label of a radio box.
  final JPTextSize? textSize;

  /// Describe the fontFamily [JPFontFamily.roboto] of label of a radio box.
  final JPFontFamily fontFamily;

  /// Describe the fontWeight [JPFontWeight.regular] of label of a radio box.
  final JPFontWeight fontWeight;

  /// Describe the textColor [JPColor.black] of label of a radio box.
  final Color? textColor;

  /// Describe the text is clickable or not od a radio box.
  final bool? isTextClickable;

  const JPRadioButton({
    Key? key,
    this.jpRadioData,
    this.activeColor = JPColor.primary, //defaults to toggleableActiveColor,
    this.orientation = JPOrientation.vertical,
    this.fontWeight = JPFontWeight.regular,
    this.fontFamily = JPFontFamily.roboto,
    this.textSize = JPTextSize.heading4,
    this.textColor = JPColor.black,
    this.isTextClickable = false,
  }) : super(key: key);

  @override
  _JPRadioButtonState createState() => _JPRadioButtonState();
}

class _JPRadioButtonState extends State<JPRadioButton> {
  int? _selected;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<FocusNode> focusNode = List<FocusNode>.generate(
        widget.jpRadioData!.length, (_) => FocusNode());

    final List<Color> splashColor = List<Color>.generate(widget.jpRadioData!.length, (index) => JPColor.transparent);
    List s = List.filled(widget.jpRadioData!.length, JPColor.transparent, growable: false);

    /// onChanged function of a radio.
    getOnChanged(T) {
      if (widget.isTextClickable!) {
        null;
      }

      setState(() {
        s[T] = JPColor.primary;
        _selected = T;
      });
    }

    List<Widget> content = [];
    for (int i = 0; i < widget.jpRadioData!.length; i++) {
      Container radio = Container(
        height: 32,
          width: 32,
        decoration: BoxDecoration(
          color: s[i],
          borderRadius: BorderRadius.circular(50),
        ),
        child: Radio(
          activeColor: !widget.jpRadioData!.elementAt(i).disabled!
              ? widget.activeColor
              : widget.activeColor!.withOpacity(0.4),
          groupValue: _selected,
          value: i,
          onChanged:
          !widget.jpRadioData!.elementAt(i).disabled! ? getOnChanged : null,
          hoverColor: JPColor.primary.withOpacity(0.1),
          focusColor: JPColor.primary.withOpacity(0.1),
        ),
      );

      JPText text = JPText(
        text: widget.jpRadioData!.elementAt(i).label!,
        textColor: !widget.jpRadioData!.elementAt(i).disabled!
            ? widget.textColor
            : widget.textColor!.withOpacity(0.4),
        textSize: widget.textSize,
        fontWeight: widget.fontWeight,
        fontFamily: widget.fontFamily,
      );

      getSizedBox() {
        if (widget.jpRadioData!.elementAt(i).label == null) {
          return const SizedBox.shrink();
        }
        return const SizedBox(
          width: 8,
        );
      }

      content.add(GestureDetector(
        onTap: widget.jpRadioData!.elementAt(i).disabled!
            ? null
            : (widget.isTextClickable!
            ? () {
          getOnChanged(i);
        }
            : null),
        child: FittedBox(
          child: Row(children: <Widget>[
            radio,
            getSizedBox(),
            text,
          ]),
        ),
      ));
    }

    if (widget.orientation == JPOrientation.horizontal) {
      return Row(children: content);
    }

    return Column(children: content);
  }
}