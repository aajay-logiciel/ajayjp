import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/Text/fontweight.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class JPACheckbox extends StatefulWidget {
  const JPACheckbox(
      {this.disabled = false,
      this.isTextClickable = false,
      this.selected = false,
      this.text,
      this.textSize = JPTextSize.heading4,
      this.textColor = JPColor.black,
      this.fontFamily = JPFontFamily.roboto,
      this.fontWeight = JPFontWeight.regular,
      Key? key})
      : super(key: key);

  final bool? disabled;
  final bool? isTextClickable;
  final bool? selected;
  final String? text;
  final Color? textColor;
  final JPFontFamily? fontFamily;
  final JPFontWeight? fontWeight;
  final JPTextSize? textSize;

  @override
  _JPACheckboxState createState() => _JPACheckboxState();
}

class _JPACheckboxState extends State<JPACheckbox> {
  late bool selected;
  late String text;

  getOnTab() {
    setState(() {
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
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      splashColor: JPColor.primary.withOpacity(0.1),
      onTap: widget.disabled!
          ? null
          : widget.isTextClickable!
              ? getOnTab
              : null,
      child: FittedBox(
          child: Row(
        children: [
          getCheckBox(),
          (text == '')
              ? const SizedBox.shrink()
              : const SizedBox(
                  width: 8.5,
                ),
          getText(),
          (text == '')
              ? const SizedBox.shrink()
              : const SizedBox(
                  width: 8.5,
                )
        ],
      )),
    );
  }

  Widget getCheckBox() => Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          splashColor: JPColor.primary.withOpacity(0.1),
          onTap: widget.disabled!
              ? null
              : widget.isTextClickable!
                  ? null
                  : getOnTab,
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
                border: selected
                    ? Border.all(
                        color: widget.disabled!
                            ? JPColor.black.withOpacity(0.5)
                            : JPColor.black,
                        width: 1)
                    : null,
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

  Widget getText() => JPText(
        text: text,
        textColor: widget.disabled == false
            ? widget.textColor
            : widget.textColor!.withOpacity(0.4),
        textSize: widget.textSize,
        fontWeight: widget.fontWeight,
        fontFamily: widget.fontFamily,
      );
}
