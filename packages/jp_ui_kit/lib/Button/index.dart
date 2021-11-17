import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/CommonFiles/icon_position.dart';
import 'package:jp_ui_kit/CommonFiles/shape.dart';
import 'package:jp_ui_kit/Text/fontweight.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';
import 'color_type.dart';
import 'size.dart';
import 'radius.dart';

class JPButton extends StatefulWidget {
  const JPButton({
    this.disabled = false,
    this.colorType = JPButtonColorType.primary,
    this.onPressed,
    this.iconColor,
    this.iconData,
    this.iconPosition = JPIconPosition.start,
    this.text,
    this.size = JPButtonSize.flat,
    this.textColor,
    this.fontFamily = JPFontFamily.montserrat,
    this.fontWeight = JPFontWeight.bold,
    this.textSize = JPTextSize.heading3,
    this.iconSize = 15,
    this.type = JPButtonType.solid,
    Key? key,
  }) : super(key: key);

  final bool disabled;
  final JPButtonColorType colorType;
  final VoidCallback? onPressed;
  final IconData? iconData;
  final Color? iconColor;
  final JPIconPosition iconPosition;
  final String? text;
  final JPButtonSize size;
  final Color? textColor;
  final JPFontFamily fontFamily;
  final JPFontWeight fontWeight;
  final JPTextSize? textSize;
  final double? iconSize;
  final JPButtonType? type;

  @override
  _JPButtonState createState() => _JPButtonState();
}

class _JPButtonState extends State<JPButton> {
  IconData? iconData;
  Color? iconColor;
  JPButtonSize? size;
  JPButtonRadius? radius = JPButtonRadius.circular;
  ShapeBorder? borderShape;
  JPButtonShape? shape;

  String? text;
  JPTextSize? textSize;
  Color? textColor;
  JPButtonType? type;

  @override
  void initState() {
    text = widget.text;
    iconData = widget.iconData;
    iconColor = widget.iconColor;
    size = widget.size;
    textColor = widget.textColor;
    textSize = widget.textSize;
    type = widget.type;

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
      case JPButtonSize.mediumWithIcon:
        return JPTextSize.heading6;
      default:
        return JPTextSize.heading3;
    }
  }

  Color getTextColor() {
    switch (widget.colorType) {
      case JPButtonColorType.primary:
        return widget.type == JPButtonType.outline ? JPColor.primary : JPColor.white;

      case JPButtonColorType.tertiary:
        return widget.type == JPButtonType.outline ? JPColor.tertiary : JPColor.white;
      
      case JPButtonColorType.lightGray:
        return widget.type == JPButtonType.outline ? JPColor.lightGray : JPColor.tertiary;
      
      default:
        return JPColor.white;
    }
  }

  Color getButtonColor() {
    if (type == JPButtonType.outline) {
      return JPColor.transparent;
    }

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

  Color getBorderColor() {
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

  BoxDecoration getBoxDecoration() {
    switch (type) {
      case JPButtonType.solid:
        return BoxDecoration(
          borderRadius: getButtonRadius(),
          color: getButtonColor(),
        );
      case JPButtonType.outline:
        return BoxDecoration(
            borderRadius: getButtonRadius(),
            color: JPColor.transparent,
            border: Border.all(
              width: 1.0,
              color: getBorderColor(),
            ));
      default:
        return BoxDecoration(
            borderRadius: getButtonRadius(), color: JPColor.primary);
    }
  }

  BorderRadiusGeometry getButtonRadius() {
    if (size == JPButtonSize.smallIcon) {
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
        case JPButtonSize.flat:
          return MediaQuery.of(context).size.width;

        case JPButtonSize.large:
        case JPButtonSize.medium:
          return 160.0;

        case JPButtonSize.small:
          return 60.0;

        case JPButtonSize.mediumWithIcon:
          return 120.0;

        case JPButtonSize.smallIcon:
          return 26;

        default:
          return MediaQuery.of(context).size.width;
      }
    }

    double getButtonHeight() {
      switch (size) {
        case JPButtonSize.flat:
        case JPButtonSize.large:
          return 52.0;

        case JPButtonSize.medium:
          return 46.0;

        case JPButtonSize.small:
          return 26.0;

        case JPButtonSize.mediumWithIcon:
          return 32.0;

        case JPButtonSize.smallIcon:
          return 26;

        default:
          return 52.0;
      }
    }

    final BorderSide shapeBorder = BorderSide(
      width: (type == JPButtonType.outline) ? 1.0 : 0.0,
      color: (type == JPButtonType.outline)
          ? getBorderColor()
          : JPColor.transparent,
    );

    if (size == JPButtonSize.smallIcon) {
      shapeBorderType = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
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
      constraints: (iconData != null && size == JPButtonSize.smallIcon)
          ? const BoxConstraints(minWidth: 30, maxHeight: 30)
          : const BoxConstraints(minWidth: 90, maxHeight: 52),
      decoration: getBoxDecoration(),
      child: Material(
        shape: shapeBorderType,
        type: MaterialType.button,
        color: !widget.disabled
            ? getButtonColor()
            : getButtonColor().withOpacity(0.5),
        child: InkWell(
          customBorder: borderShape ?? shapeBorderType,
          onTap: widget.disabled ? null : widget.onPressed,
          child: IconTheme.merge(
            data: const IconThemeData(),
            child: Container(
              height: getButtonHeight(),
              width: getButtonWidth(),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: getCenterData()
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
    if(iconData == null) return const SizedBox.shrink();

    return Icon(
      iconData,
      size: widget.iconSize,
      color: iconColor ?? JPColor.white,
    );
  }

  Widget getText() {
    if(text == null) return const SizedBox.shrink();

    return JPText(
      text: text!,
      fontFamily: widget.fontFamily,
      fontWeight: widget.fontWeight,
      textColor: textColor ?? getTextColor(),
      textSize: getTextSize(),
      overflow: TextOverflow.ellipsis,
    );
  }


  Widget getCenterData() {
    List<Widget> rowChildren = <Widget>[
      getIcon(),
      const SizedBox(width: 5),
      Flexible(child: getText())
    ];

    if(widget.iconPosition == JPIconPosition.end) {
      rowChildren = <Widget>[
        Flexible(child: getText()),
        const SizedBox(width: 5),
        getIcon()
      ];
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: rowChildren,
    );
  }
}
