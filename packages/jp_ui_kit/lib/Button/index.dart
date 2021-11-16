import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/CommonFiles/icon_position.dart';
import 'package:jp_ui_kit/CommonFiles/shape.dart';
import 'package:jp_ui_kit/Text/fontweight.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

import 'color_type.dart';
import 'size.dart';
import 'type.dart';
import 'radius.dart';

class JPButton extends StatefulWidget {
  const JPButton({
    this.disabled = false,
    this.colorType = JPButtonColorType.primary,
    this.onPressed,
    this.iconColor = JPColor.white,
    this.iconData,
    this.iconPosition = JPIconPosition.start,
    this.text,
    this.size = JPSize.large,
    this.textColor,
    this.fontFamily = JPFontFamily.montserrat,
    this.fontWeight = JPFontWeight.bold,
    this.textSize = JPTextSize.heading3,
    this.iconSize = 15,
    this.borderColor,
    Key? key,
  }) : super(key: key);

  final bool disabled;
  final JPButtonColorType colorType;
  final VoidCallback? onPressed;
  final IconData? iconData;
  final Color? iconColor;
  final JPIconPosition iconPosition;
  final String? text;
  final JPSize size;
  final JPColor? textColor;
  final JPFontFamily fontFamily;
  final JPFontWeight fontWeight;
  final JPTextSize? textSize;
  final JPButtonColorType? borderColor;
  final double? iconSize;

  @override
  _JPButtonState createState() => _JPButtonState();
}

class _JPButtonState extends State<JPButton> {
  IconData? iconData;
  Color? iconColor;
  JPSize? size;
  JPRadius? radius = JPRadius.circular;
  ShapeBorder? borderShape;
  JPShape? shape;
  String? text;
  JPTextSize? textSize;
  JPButtonType? type;
  JPColor? textColor;

  @override
  void initState() {
    text = widget.text;
    iconData = widget.iconData;
    iconColor = widget.iconColor;
    size = widget.size;
    textColor = widget.textColor;
    textSize = widget.textSize;

    if (iconData != null && text == null) {
      size = JPSize.smallIcon;
    } else if (iconData != null && text != null) {
      size = JPSize.mediumWithIcon;
    }

    if (iconData != null && text == null) {
      size = JPSize.smallIcon;
    } else if (iconData != null && text != null) {
      size = JPSize.mediumWithIcon;
    }

    if (iconData != null && text == null) {
      shape = JPShape.standard;
    }

    super.initState();
  }

  getTextSize() {
    switch (size) {
      case JPSize.large:
        return JPTextSize.heading3;
      case JPSize.medium:
        return JPTextSize.heading4;
      case JPSize.small:
        return JPTextSize.heading6;
      case JPSize.mediumWithIcon:
        return JPTextSize.heading6;
      default:
        return JPTextSize.heading3;
    }
  }

  Color getTextColor() {
    if (widget.colorType == JPButtonColorType.lightGray) {
      return JPColor.tertiary;
    } else {
      return JPColor.white;
    }
  }

  Color getButtonColor() {
    switch (widget.colorType) {
      case JPButtonColorType.primary:
        return JPColor.primary;
      case JPButtonColorType.tertiary:
        return JPColor.tertiary;
      case JPButtonColorType.lightGray:
        return JPColor.lightGray;
      case JPButtonColorType.transparent:
        return JPColor.transparent;
      default:
        return JPColor.primary;
    }
  }

  Color getBorderColor() {
    switch (widget.borderColor) {
      case JPButtonColorType.primary:
        return JPColor.primary;
      case JPButtonColorType.tertiary:
        return JPColor.tertiary;
      case JPButtonColorType.lightGray:
        return JPColor.lightGray;
      case JPButtonColorType.transparent:
        return JPColor.transparent;
      default:
        return JPColor.primary;
    }
  }

  BoxDecoration getBoxDecoration() {
    return BoxDecoration(
        borderRadius: getButtonRadius(),
        color: JPColor.transparent,
        border: Border.all(
          width: widget.borderColor != null ? 1.0 : 0.0,
          color: widget.borderColor != null
              ? getBorderColor()
              : JPColor.transparent,
        ));
  }

  BorderRadiusGeometry getButtonRadius() {
    if (size == JPSize.smallIcon) {
      return BorderRadius.circular(10);
    } else {
      return BorderRadius.circular(50);
    }
  }

  @override
  Widget build(BuildContext context) {
    ShapeBorder shapeBorderType;

    double getButtonWidth() {
      switch (size) {
        case JPSize.large:
          return MediaQuery.of(context).size.width;
        case JPSize.medium:
          return 160.0;
        case JPSize.small:
          return 60.0;
        case JPSize.mediumWithIcon:
          return 120.0;
        case JPSize.smallIcon:
          return 30;
        default:
          return MediaQuery.of(context).size.width;
      }
    }

    double getButtonHeight() {
      switch (size) {
        case JPSize.large:
          return 52.0;
        case JPSize.medium:
          return 52.0;
        case JPSize.small:
          return 30;
        case JPSize.mediumWithIcon:
          return 32.0;
        case JPSize.smallIcon:
          return 30;
        default:
          return 52.0;
      }
    }

    final BorderSide shapeBorder = BorderSide(
      width: widget.borderColor != null ? 1.0 : 0.0,
      color:
          widget.borderColor != null ? getBorderColor() : JPColor.transparent,
    );

    if (size == JPSize.smallIcon) {
      shapeBorderType = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: shapeBorder,
      );
    } else {
      shapeBorderType = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          50,
        ),
        side: shapeBorder,
      );
    }

    final result = Container(
      constraints: iconData == null
          ? const BoxConstraints(minWidth: 80)
          : (text == null)
              ? const BoxConstraints(minWidth: 30, minHeight: 30)
              : const BoxConstraints(minWidth: 90, maxHeight: 52),
      decoration: getBoxDecoration(),
      child: Material(
        shape: shapeBorderType,
        type: MaterialType.button,
        color: getButtonColor(),
        child: InkWell(
          customBorder: borderShape ?? shapeBorderType,
          onTap: widget.disabled ? null : widget.onPressed,
          child: IconTheme.merge(
            data: const IconThemeData(),
            child: Container(
              height: getButtonHeight(),
              width: getButtonWidth(),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Align(
                alignment: Alignment.center,
                child: Center(
                  widthFactor: 1,
                  heightFactor: 1,
                  child: getCenterData(),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    return Semantics(
      container: true,
      button: true,
      enabled: widget.disabled,
      child: result,
    );
  }

  Widget getIcon() {
    return Icon(
      iconData,
      size: widget.iconSize,
      color: iconColor,
    );
  }

  Widget getText() {
    return JPText(
      text: text!,
      fontFamily: widget.fontFamily,
      fontWeight: widget.fontWeight,
      textColor: JPColor.white,
      textSize: getTextSize(),
    );
  }

  Widget getCenterData() {
    if (iconData != null &&
        text != null &&
        widget.iconPosition == JPIconPosition.start) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          getIcon(),
          const SizedBox(width: 8),
          getText(),
        ],
      );
    } else if (iconData != null &&
        text != null &&
        widget.iconPosition == JPIconPosition.start) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          getText(),
          const SizedBox(width: 8),
          getIcon(),
        ],
      );
    } else if (iconData != null && text == null) {
      return getIcon();
    } else {
      return getText();
    }
  }
}
