import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jp_ui_kit/JPButton/jp_buttonsize.dart';
import 'package:jp_ui_kit/JPButton/jp_iconposition.dart';
import 'package:jp_ui_kit/JPButton/jp_buttontype.dart';
import 'package:jp_ui_kit/common_files/jp_colors.dart';
import 'package:jp_ui_kit/common_files/jp_shape.dart';
import 'package:jp_ui_kit/common_files/jp_size.dart';



class JPButton extends StatefulWidget {
  const JPButton({
    Key? key,
    this.onPressed,
    this.textStyle,
    this.boxShadow,
    this.buttonBoxShadow,
    this.padding = const EdgeInsets.symmetric(horizontal: 8),
    this.constraints,
    this.borderShape,
    MaterialTapTargetSize? materialTapTargetSize,
    this.child,
    this.type = JPButtonType.solid,
    this.shape = JPShape.circular,
    this.color = JPColor.PRIMARY,
    this.jpButtonwidth = JPButtonSize.LARGE,
    this.jpButtonhight = JPButtonSize.LARGE,
    this.textColor,
    this.iconposition = JPIconPosition.start,
    this.size = JPSize.MEDIUM,
    this.borderSide,
    this.text="BUTTON",
    this.width,
    this.height,
    this.disabledColor,
    this.disabledTextColor,
    this.iconData,
    this.iconcolor,
  })  : materialTapTargetSize =
      materialTapTargetSize ?? MaterialTapTargetSize.padded,
        super(key: key);

  /// Called when the button is tapped or otherwise activated.
  final VoidCallback? onPressed;

  /// Defines the default text style, with [Material.textStyle], for the button's [child].
  final TextStyle? textStyle;

  /// The border side for the button's [Material].
  final BorderSide? borderSide;

  /// The box shadow for the button's [Material], if GFButtonType is solid
  final BoxShadow? boxShadow;

  /// The internal padding for the button's [child].
  final EdgeInsetsGeometry padding;

  /// Defines the button's size.
  final BoxConstraints? constraints;

  /// The shape of the button's [Material].
  final ShapeBorder? borderShape;


  /// Typically the button's label.
  final Widget? child;

  /// Whether the button is enabled or disabled.
  bool get enabled => onPressed != null;

  /// Configures the minimum size of the tap target.
  final MaterialTapTargetSize materialTapTargetSize;


  /// Button type of [ButtonType] i.e, solid, outline, transparent
  final JPButtonType type;

  /// Button type of [BShape] i.e, standard, circular, square, icons
  final JPShape shape;

  final JPButtonSize jpButtonwidth;

  final JPButtonSize jpButtonhight;

  /// Pass [JPColors] or [Color]
  final Color color;

  /// The fill color of the button when the button is disabled.
  ///
  /// The default value of this color is the theme's disabled color,
  /// [ThemeData.disabledColor].
  ///
  /// See also:
  ///
  ///  * [color] - the fill color of the button when the button is [enabled].
  final Color? disabledColor;

  /// Pass [_Color] or [Color]
  final Color? textColor;

  /// The color to use for this button's text when the button is disabled.
  ///
  /// The button's [Material.textStyle] will be the current theme's button
  /// text style, [ThemeData.textTheme.button], configured with this color.
  ///
  /// The default value is the theme's disabled color,
  /// [ThemeData.disabledColor].
  ///
  /// If [textColor] is a [MaterialStateProperty<Color>], [disabledTextColor]
  /// will be ignored.
  ///
  /// See also:
  ///
  ///  * [textColor] - The color to use for this button's text when the button is [enabled].
  final Color? disabledTextColor;

  /// size of [double] or [Size] i.e, small, medium, large etc.
  final double size;

  /// text of type [String] is alternative to child. text will get priority over child
  final String? text;

  final IconData? iconData;

  final Color? iconcolor;

  /// icon type of [Position] i.e, start, end
  final JPIconPosition iconposition;

  ///set Button Width According to requirement
  final double? width;

  ///set Button Width According to requirement
  final double? height;

  /// on true state default box shadow appears around button, if JPButtonType is solid
  final bool? buttonBoxShadow;


  @override
  _JPButtonState createState() => _JPButtonState();
}

class _JPButtonState extends State<JPButton> {
  late Color color;
  Color? textColor;
  Color? disabledColor;
  Color? disabledTextColor;
  Widget? child;
  IconData? iconData;
  Function? onPressed;
  late JPButtonType type;
  late JPShape shape;
  late double size;
  late JPIconPosition iconposition;
  late BoxShadow boxShadow;
  late JPButtonSize jpButtonWidth;

  final Set<MaterialState> _states = <MaterialState>{};

  @override
  void initState() {
    color = widget.color;
    textColor = widget.textColor;
    child = widget.text != null ? Text(widget.text!) : widget.child;
    iconData = widget.iconData;
    onPressed = widget.onPressed;
    type = widget.type;
    shape = widget.shape;
    size = widget.size;
    jpButtonWidth=widget.jpButtonwidth;
    iconposition = widget.iconposition;
    disabledColor = widget.disabledColor;
    disabledTextColor = widget.disabledTextColor;
    _updateState(
      MaterialState.disabled,
      !widget.enabled,
    );
    super.initState();
  }


  double buttonWidth(){
    switch(widget.jpButtonwidth){
      case JPButtonSize.LARGE:
        return MediaQuery.of(context).size.width;
      case JPButtonSize.MEDIUM:
        return 160;
      case JPButtonSize.SMALL:
        return 60;
      case JPButtonSize.JPRECTANGLE:
        return 120;
      case JPButtonSize.JPSQUARE:
        return 30;
    }
  }

  double buttonHeight(){
    switch(widget.jpButtonwidth){
      case JPButtonSize.LARGE:
        return 52;
      case JPButtonSize.MEDIUM:
        return 52;
      case JPButtonSize.SMALL:
        return 26;
      case JPButtonSize.JPRECTANGLE:
        return 32;
      case JPButtonSize.JPSQUARE:
        return 30;
    }
  }

  void _updateState(MaterialState state, bool value) {
    value ? _states.add(state) : _states.remove(state);
  }


  @override
  void didUpdateWidget(JPButton oldWidget) {
    _updateState(MaterialState.disabled, !widget.enabled);
    // If the button is disabled while a press gesture is currently ongoing,
    // InkWell makes a call to handleHighlightChanged. This causes an exception
    // because it calls setState in the middle of a build. To preempt this, we
    // manually update pressed to false when this situation occurs.
    color = widget.color;
    textColor = widget.textColor;
    child = widget.text != null ? Text(widget.text!) : widget.child;
    onPressed = widget.onPressed;
    type = widget.type;
    shape = widget.shape;
    size = widget.size;
    iconposition = widget.iconposition;
    disabledColor = widget.disabledColor;
    disabledTextColor = widget.disabledTextColor;
    _updateState(
      MaterialState.disabled,
      !widget.enabled,
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    ShapeBorder shapeBorderType;

    Color getBorderColor() {
      if (widget.enabled) {
        final Color fillColor = color;
        return fillColor;
      } else {
        if (disabledColor != null) {
          return disabledColor!;
        } else {
          return color.withOpacity(0.48);
        }
      }
    }

    Color getDisabledFillColor() {
      if (widget.type == JPButtonType.transparent ||
          widget.type == JPButtonType.outline ) {
        return JPColor.WHITE;
      }
      if (disabledColor != null) {
        return disabledColor!;
      } else {
        return color.withOpacity(0.48);
      }
    }

    Color getColor() {
      if (widget.type == JPButtonType.transparent ||
          widget.type == JPButtonType.outline ) {
        return JPColor.WHITE;
      }
      final Color fillColor = color;
      return fillColor;
    }

    Color getDisabledTextColor() {
      if (disabledTextColor != null) {
        return disabledTextColor!;
      } else if (widget.type == JPButtonType.outline ||
          widget.type == JPButtonType.transparent) {
        return color;
      } else {
        return JPColor.WHITE;
      }
    }

    Color getTextColor() {
      if (widget.type == JPButtonType.outline ||
          widget.type == JPButtonType.transparent) {
        return widget.enabled
            ? textColor == null
            ? color == JPColor.WHITE
            ? JPColor.DARK
            : color
            : textColor!
            : getDisabledTextColor();
      }
      if (textColor == null) {
        if (color == JPColor.TRANSPARENT) {
          return JPColor.DARK;
        } else {
          return JPColor.WHITE;
        }
      } else {
        return textColor!;
      }
    }

    final Color? effectiveTextColor = MaterialStateProperty.resolveAs<Color?>(
        widget.textStyle?.color, _states);
    //final Color themeColor =Theme.of(context).colorScheme.onSurface.withOpacity(0.12);
    final BorderSide outlineBorder = BorderSide(
      color: widget.borderSide == null
          ? getBorderColor()
          : widget.borderSide!.color,
      width: (widget.borderSide?.width == null
          ? widget.type == JPButtonType.outline
          ? 1.0
          : 1.0
          : widget.borderSide?.width)!,
    );

    Size minSize;
    switch (widget.materialTapTargetSize) {
      case MaterialTapTargetSize.padded:
        minSize = const Size(48, 48);
        break;
      case MaterialTapTargetSize.shrinkWrap:
        minSize = Size.zero;
        break;
      default:
        minSize = Size.zero;
        break;
    }

    final BorderSide shapeBorder = widget.type == JPButtonType.outline
        ? outlineBorder
        : widget.borderSide ??
        BorderSide(
          color: getBorderColor(),
          width: 0,
        );

    switch(shape){
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

    BoxDecoration? getBoxShadow() {
      if (widget.type != JPButtonType.transparent) {
        if (widget.boxShadow == null && widget.buttonBoxShadow != true) {
          return null;
        } else {
          return BoxDecoration(
            color: widget.type == JPButtonType.transparent ||
                widget.type == JPButtonType.outline
                ? Colors.transparent
                : color,
            borderRadius: widget.shape == JPShape.circular
                ? BorderRadius.circular(50)
                : widget.shape == JPShape.standard
                ? BorderRadius.circular(5)
                : BorderRadius.zero,
          );
        }
      }
      return null;
    }


    TextStyle getTextStyle(){
      switch(widget.jpButtonwidth){
        case JPButtonSize.SMALL:
          return TextStyle(
              color: widget.enabled ? getTextColor() : getDisabledTextColor(),
               fontFamily: 'Roboto',
               package: 'jp_ui_kit',
               fontStyle: FontStyle.normal,
               fontSize: 12);
        case JPButtonSize.MEDIUM:
          return TextStyle(
              color: widget.enabled ? getTextColor() : getDisabledTextColor(),
              fontSize: 13,
            fontFamily: 'Roboto',
            package: 'jp_ui_kit',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,);
        case JPButtonSize.LARGE:
          return TextStyle(
              color: widget.enabled ? getTextColor() : getDisabledTextColor(),
              fontSize: 14,
            fontFamily: 'Roboto',
            package: 'jp_ui_kit',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,);
        default:
          return TextStyle(
              color: widget.enabled ? getTextColor() : getDisabledTextColor(),
              fontSize: 14,
            fontFamily: 'Roboto',
            package: 'jp_ui_kit',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,);

      }
    }



    final Widget result = Container(
      constraints: widget.iconData == null
          ? const BoxConstraints(minWidth: 80)
          :(child == null)? const BoxConstraints(minWidth: 30,minHeight: 30):const BoxConstraints(minWidth: 90),
      decoration: widget.type == JPButtonType.solid ? getBoxShadow() : null,
      child: Material(
        elevation: 0,
        textStyle: widget.textStyle == null ? getTextStyle() : widget.textStyle,
        shape: widget.type == JPButtonType.transparent
            ? null
            : widget.borderShape ?? shapeBorderType,
        color: widget.enabled ? getColor() : getDisabledFillColor(),
        type: MaterialType.button,
        child: InkWell(
          onTap: widget.onPressed,
          customBorder: widget.type == JPButtonType.transparent
              ? null
              : widget.borderShape ?? shapeBorderType,
          child: IconTheme.merge(
            data: IconThemeData(color: effectiveTextColor),
            child: Container(
              height: buttonHeight(),
              width: buttonWidth(),
              padding: widget.padding,
              child: Align(
                alignment: Alignment.center,
                child: Center(
                  widthFactor: 1,
                  heightFactor: 1,
                  child: widget.iconData != null &&
                      child != null &&
                      (iconposition == JPIconPosition.start)
                      ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        widget.iconData,
                        size: 15,
                        color: widget.iconcolor,
                      ),
                      const SizedBox(width: 8),
                      child!
                    ],
                  )
                      : widget.iconData != null &&
                      child != null &&
                      (iconposition == JPIconPosition.end)
                      ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      child!,
                      const SizedBox(width: 8),
                      Icon(
                        widget.iconData,
                        size: 15,
                        color: widget.iconcolor,
                      ),
                    ],
                  )
                      : (widget.iconData!=null&& child==null)?Icon(
                    widget.iconData,
                    size: 15,
                    color: widget.iconcolor,
                  ):child,
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
      enabled: widget.enabled,
      child: _InputPadding(
        minSize: minSize,
        child: result,
      ),
    );
  }
}

/// A widget to pad the area around a [MaterialButton]'s inner [Material].
///
/// Redirect taps that occur in the padded area around the child to the center
/// of the child. This increases the size of the button and the button's
/// "tap target", but not its material or its ink splashes.
class _InputPadding extends SingleChildRenderObjectWidget {
  const _InputPadding({
    Key? key,
    Widget? child,
    this.minSize,
  }) : super(
    key: key,
    child: child,
  );

  final Size? minSize;

  @override
  RenderObject createRenderObject(BuildContext context) =>
      _RenderInputPadding(minSize);

  @override
  void updateRenderObject(
      BuildContext context, covariant _RenderInputPadding renderObject) {
    renderObject.minSize = minSize;
  }
}

class _RenderInputPadding extends RenderShiftedBox {
  _RenderInputPadding(this._minSize, [RenderBox? child]) : super(child);

  Size? get minSize => _minSize;
  Size? _minSize;

  set minSize(Size? value) {
    _minSize = value;
    markNeedsLayout();
  }

  @override
  double computeMinIntrinsicWidth(double height) {
    if (child != null && minSize != null) {
      return math.max(child!.getMinIntrinsicWidth(height), minSize!.width);
    }
    return 0;
  }

  @override
  double computeMinIntrinsicHeight(double width) {
    if (child != null && minSize != null) {
      return math.max(child!.getMinIntrinsicHeight(width), minSize!.height);
    }
    return 0;
  }

  @override
  double computeMaxIntrinsicWidth(double height) {
    if (child != null && minSize != null) {
      return math.max(child!.getMaxIntrinsicWidth(height), minSize!.width);
    }
    return 0;
  }

  @override
  double computeMaxIntrinsicHeight(double width) {
    if (child != null && minSize != null) {
      return math.max(child!.getMaxIntrinsicHeight(width), minSize!.height);
    }
    return 0;
  }

  @override
  void performLayout() {
    if (child != null && minSize != null) {
      child!.layout(constraints, parentUsesSize: true);
      // ignore: avoid_as
      final BoxParentData childParentData = child!.parentData as BoxParentData;
      final double height = math.max(child!.size.width, minSize!.width);
      final double width = math.max(child!.size.height, minSize!.height);
      size = constraints.constrain(Size(height, width));
      childParentData.offset =
      // ignore: avoid_as
      Alignment.center.alongOffset(size - child!.size as Offset);
    } else {
      size = Size.zero;
    }
  }

  @override
  bool hitTest(BoxHitTestResult result, {required Offset position}) {
    if (super.hitTest(result, position: position)) {
      return true;
    }

    if (child != null) {
      final Offset center = child!.size.center(Offset.zero);
      return result.addWithRawTransform(
        transform: MatrixUtils.forceToPoint(center),
        position: center,
        hitTest: (BoxHitTestResult result, Offset position) {
          assert(position == center);
          return child!.hitTest(
            result,
            position: center,
          );
        },
      );
    }

    throw Exception('child property cannot be null');
  }
}

