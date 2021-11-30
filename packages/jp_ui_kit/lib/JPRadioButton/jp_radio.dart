import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/CommonFiles/position.dart';
import 'package:jp_ui_kit/CommonFiles/fontweight.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class JPRadioBox extends StatefulWidget {
  const JPRadioBox(
      {this.disabled = false,
      this.isTextClickable = true,
      this.selected = false,
      this.text,
      this.textSize = JPTextSize.heading4,
      this.textColor = JPColor.black,
      this.fontFamily = JPFontFamily.roboto,
      this.fontWeight = JPFontWeight.regular,
      this.borderColor = JPColor.black,
      this.checkBoxColor = JPColor.primary,
      this.position = JPPosition.start,
      this.checkColor = JPColor.white,
      this.checkBoxHeight = 17.0,
      this.checkBoxWidth = 17.0,
        this.value,
        this.jpRadioData,
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
  final Color? checkBoxColor;

  /// Defines checkbox position [JPPosition.start] with related to text of a checkbox.
  final JPPosition? position;

  /// Defines checkColor of a checkbox.
  final Color? checkColor;

  /// Defines width of a checkbox.
  final double? checkBoxWidth;

  /// Defines height of a checkbox.
  final double? checkBoxHeight;

  final int? value;

  final List<JPRadioData>? jpRadioData;


  @override
  _JPRadioBoxState createState() => _JPRadioBoxState();
}

class _JPRadioBoxState extends State<JPRadioBox> {
  late bool selected;
  int? _selected;
  late String? text;
  late Color fillColor;
  Color? splashColor;
   List<Color> s = [];

  getOnChanged(T) {
    if (widget.isTextClickable!) {
      null;
    }

    setState(() {
      _selected = T;
    });
  }

  @override
  void initState() {
    selected = widget.selected!;
    text = widget.text;
    fillColor = JPColor.white;
    splashColor = JPColor.transparent;
    for(
    int i=0 ; i<= widget.jpRadioData!.length ; i++){
      s.add(JPColor.transparent);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    ///Defines text widget of a checkbox.
    Widget getText(int index) {
      getColor() {
        return widget.disabled
            ? widget.textColor!.withOpacity(0.4)
            : widget.textColor;
      }

      return JPText(
        text: widget.jpRadioData!.elementAt(index).label!,
        textColor: getColor(),
        textSize: widget.textSize,
        fontWeight: widget.fontWeight,
        fontFamily: widget.fontFamily,
      );
    }

    ///Defines checkbox widget of a checkbox.
    ///InkWell is used when isTextClickable method of a checkbox.
    Widget getRadioBox(int index) {
      return Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: s[index],
          borderRadius: BorderRadius.circular(50),
        ),
        child: Radio(
          groupValue: _selected,
          value: index,
          onChanged: getOnChanged,
          hoverColor: JPColor.primary.withOpacity(0.1),
          focusColor: JPColor.primary.withOpacity(0.1),
        ),
      );
    }

    /// Defines Fitted box Widget
    getFittedBoxData(int index) {
      /*if (text == null) {
        return getRadioBox(index);
      }*/

      if (widget.position == JPPosition.end) {
        return Row(
          children: [
            getText(index),
            const SizedBox(
              width: 8.5,
            ),
            getRadioBox(index),
          ],
        );
      }
      return Row(
        children: [
          getRadioBox(index),
          const SizedBox(
            width: 8.5,
          ),
          getText(index),
        ],
      );
    }

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: SizedBox(
            width: 500,
            height: 200,
            child: ListView.builder(
                itemCount: widget.jpRadioData!.length,
                itemBuilder: (context , index){
                  return GestureDetector(
                    onTap: (){
                      print(s);
                      print(s[index]);
                      s.insert(index, JPColor.primary);
                      print(s);

                      getOnChanged(index);

                      Timer(
                        const Duration(milliseconds: 300),
                            () {
                          setState(() {
                            s.insert(index, JPColor.transparent);
                          });
                          return;
                        },
                      );
                    },
                      child: getFittedBoxData(index));
                }),
          ),
        )
    );
  }
}
