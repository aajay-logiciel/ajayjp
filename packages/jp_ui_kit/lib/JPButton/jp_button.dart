import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPButton/jp_button_color_type.dart';
import 'package:jp_ui_kit/JPButton/jp_button_size.dart';
import 'package:jp_ui_kit/JPButton/jp_icon_position.dart';
import 'package:jp_ui_kit/JPButton/jp_radius.dart';
import 'package:jp_ui_kit/JPText/jp_fontweight.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class JPButton extends StatefulWidget {
  const JPButton(
      {this.disabled = false,
      this.colorType = JPButtonColorType.primary,
      this.backgroundColor,
      this.type = JPButtonType.solid,
      this.onPressed,
      this.iconColor = JPColor.white,
      this.iconData,
      this.child,
      this.iconPosition = JPIconPosition.start,
      this.text,
      this.size = JPButtonSize.large,
      this.textColor,
      this.fontFamily = JPFontFamily.montserrat,
      this.fontWeight = JPFontWeight.bold,
      this.textSize = JPTextSize.heading3,
      this.borderColor = JPColor.primary,
      this.iconSize = 15,
        this.status =false,
      Key? key, this.success})
      : super(key: key);

  final bool disabled;
  final JPButtonColorType colorType;
  final Color? backgroundColor;
  final JPButtonType type;
  final VoidCallback? onPressed;
  final Widget? child;
  final IconData? iconData;
  final Color? iconColor;
  final JPIconPosition iconPosition;
  final String? text;
  final JPButtonSize size;
  final Color? textColor;
  final JPFontFamily fontFamily;
  final JPFontWeight fontWeight;
  final JPTextSize? textSize;
  final Color borderColor;
  final double? iconSize;
  final bool? status;
  final bool? success;

  @override
  _JPButtonState createState() => _JPButtonState();
}

class _JPButtonState extends State<JPButton> {
  IconData? iconData;
  Color? iconColor;
  Widget? child;
  JPButtonSize? size;
  JPRadius? radius = JPRadius.circular;
  ShapeBorder? borderShape;
  JPShape? shape;
  String? text;
  JPTextSize? textSize;
  JPButtonType? type;
  Color? textColor;

  @override
  void initState() {
    text = widget.text;
    child = widget.child;
    type = widget.type;
    iconData = widget.iconData;
    iconColor = widget.iconColor;
    size = widget.size;
    textColor = widget.textColor;
    textSize = widget.textSize;

    if (iconData != null && text == null) {
      size = JPButtonSize.extraSmall;
    } else if (iconData != null && text != null) {
      size = JPButtonSize.semiMedium;
    }

    if (text != null) {
      child = JPText(
        text: text!,
        fontFamily: widget.fontFamily,
        fontWeight: widget.fontWeight,
        textColor: textColor ?? getTextColor(),
        textSize: getTextSize() ?? textSize,
      );
    }

    if (iconData != null && text == null) {
      size = JPButtonSize.extraSmall;
    } else if (iconData != null && text != null) {
      size = JPButtonSize.semiMedium;
    }

    if (iconData != null && text == null) {
      shape = JPShape.standard;
    }

    super.initState();
  }

  getTextSize() {
    switch (size) {
      case JPButtonSize.large:
        return JPTextSize.heading3;
      case JPButtonSize.medium:
        return JPTextSize.heading4;
      case JPButtonSize.small:
        return JPTextSize.heading6;
      case JPButtonSize.semiMedium:
        return JPTextSize.heading6;
      default:
        return JPTextSize.heading3;
    }
  }

  getTextColor() {
    if (type == JPButtonType.outline) {
      textColor = JPColor.primary;
    } else if (widget.colorType == JPButtonColorType.lightGray) {
      textColor = JPColor.tertiary;
    } else {
      return JPColor.white;
    }
  }

  Color getButtonColor() {
    if (type == JPButtonType.outline) {
      return JPColor.transparent;
    } else {
      switch (widget.colorType) {
        case JPButtonColorType.primary:
          return JPColor.primary;
        case JPButtonColorType.tertiary:
          return JPColor.tertiary;
        case JPButtonColorType.lightGray:
          return JPColor.lightGray;
        default:
          return JPColor.primary;
      }
    }
  }

  BoxDecoration getBoxDecoration() {
    switch (type) {
      case JPButtonType.solid:
        return BoxDecoration(
          borderRadius: getButtonRadius(),
          color: widget.backgroundColor ?? getButtonColor(),
        );
      case JPButtonType.outline:
        return BoxDecoration(
            borderRadius: getButtonRadius(),
            color: widget.backgroundColor ?? JPColor.transparent,
            border: Border.all(
              width: 1.0,
              color: widget.borderColor,
            ));
      default:
        return BoxDecoration(
          borderRadius: getButtonRadius(),
          color: widget.backgroundColor ?? getButtonColor(),
        );
    }
  }

  BorderRadiusGeometry getButtonRadius() {
    switch (radius) {
      case JPRadius.circular:
        return BorderRadius.circular(50);
      case JPRadius.round:
        return BorderRadius.circular(10);
      default:
        return BorderRadius.circular(50);
    }
  }

  @override
  Widget build(BuildContext context) {
    ShapeBorder shapeBorderType;

    double getButtonWidth() {
      switch (size) {
        case JPButtonSize.large:
          return MediaQuery.of(context).size.width;
        case JPButtonSize.medium:
          return 160.0;
        case JPButtonSize.small:
          return 60.0;
        case JPButtonSize.semiMedium:
          return 120.0;
        case JPButtonSize.extraSmall:
          return 30;
        default:
          return MediaQuery.of(context).size.width;
      }
    }

    double getButtonHeight() {
      switch (size) {
        case JPButtonSize.large:
          return 52.0;
        case JPButtonSize.medium:
          return 52.0;
        case JPButtonSize.small:
          return 30;
        case JPButtonSize.semiMedium:
          return 32.0;
        case JPButtonSize.extraSmall:
          return 30;
        default:
          return 52.0;
      }
    }

    const BorderSide outlineBorder = BorderSide(
      color: JPColor.primary,
      width: 1,
    );
    final BorderSide shapeBorder = type == JPButtonType.outline
        ? outlineBorder
        : const BorderSide(
            color: JPColor.transparent,
            width: 0,
          );

    switch (shape) {
      case JPShape.circular:
        shapeBorderType = RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            50,
          ),
          side: shapeBorder,
        );
        break;

      case JPShape.square:
        shapeBorderType = RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: shapeBorder,
        );
        break;
      case JPShape.standard:
        shapeBorderType = RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: shapeBorder,
        );
        break;
      default:
        shapeBorderType = RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: shapeBorder,
        );
    }
    final result = Container(
      constraints: iconData == null
          ? const BoxConstraints(minWidth: 80)
          : (child == null)
              ? const BoxConstraints(minWidth: 30, minHeight: 30)
              : const BoxConstraints(minWidth: 90, maxHeight: 52),
      decoration: getBoxDecoration(),
      child: Material(
        shape: shapeBorderType,
        type: MaterialType.button,
        color: widget.backgroundColor ?? getButtonColor(),
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
                  child: iconData != null &&
                          child != null &&
                          (widget.iconPosition == JPIconPosition.start)
                      ? Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              iconData,
                              size: widget.iconSize,
                              color: iconColor,
                            ),
                            const SizedBox(width: 8),
                            child!,
                          ],
                        )
                      : iconData != null &&
                              child != null &&
                              (widget.iconPosition == JPIconPosition.end)
                          ? Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                child!,
                                const SizedBox(width: 8),
                                Icon(
                                  iconData,
                                  size: widget.iconSize,
                                  color: iconColor,
                                ),
                              ],
                            )
                          : (iconData != null && widget.text == null)
                              ? Icon(
                                  iconData,
                                  size: widget.iconSize,
                                  color: iconColor,
                                )
                              : child,
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
}
