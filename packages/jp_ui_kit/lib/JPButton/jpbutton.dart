import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jp_ui_kit/JPButton/Type/type.dart';
import 'package:jp_ui_kit/common_files/Colors/colors.dart';
import 'package:jp_ui_kit/common_files/Shape/shape.dart';
import 'package:jp_ui_kit/common_files/Size/size.dart';

import 'Position/position.dart';



class JPButton extends StatefulWidget {
  const JPButton({
    Key? key,
    this.onPressed,
    this.onHighlightChanged,
    this.textStyle,
    this.boxShadow,
    this.buttonBoxShadow,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.elevation = 0.0,
    this.highlightElevation = 1.0,
    this.disabledElevation = 0.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 8),
    this.constraints,
    this.borderShape,
    this.animationDuration = kThemeChangeDuration,
    this.focusNode,
    this.autofocus = false,
    MaterialTapTargetSize? materialTapTargetSize,
    this.child,
    this.type = ButtonType.solid,
    this.shape = BShape.circular,
    this.color = JPColor.PRIMARY,
    this.textColor,
    this.position = Position.start,
    this.size = JPSize.MEDIUM,
    this.borderSide,
    this.text="BUTTON",
    this.icon,
    this.blockButton,
    this.fullWidthButton,
    this.width,
    this.height,
    this.disabledColor,
    this.disabledTextColor,
  })  : materialTapTargetSize =
      materialTapTargetSize ?? MaterialTapTargetSize.padded,
  // assert(elevation != null && elevation >= 0.0),
        assert(highlightElevation >= 0.0),
        assert(disabledElevation >= 0.0),
        super(key: key);

  /// Called when the button is tapped or otherwise activated.
  final VoidCallback? onPressed;

  /// Called by the underlying [InkWell] widget's InkWell.onHighlightChanged callback.
  final ValueChanged<bool>? onHighlightChanged;

  /// Defines the default text style, with [Material.textStyle], for the button's [child].
  final TextStyle? textStyle;

  /// The border side for the button's [Material].
  final BorderSide? borderSide;

  /// The box shadow for the button's [Material], if GFButtonType is solid
  final BoxShadow? boxShadow;

  /// Pass [Colors] or [Color]. The color for the button's [Material] when it has the input focus.
  final Color? focusColor;

  /// Pass [JPColors] or [Color]. The color for the button's [Material] when a pointer is hovering over it.
  final Color? hoverColor;

  /// Pass [JPColors] or [Color]. The highlight color for the button's [InkWell].
  final Color? highlightColor;

  /// Pass [JPColors] or [Color]. The splash color for the button's [InkWell].
  final Color? splashColor;

  /// The elevation for the button's [Material] when the button is [enabled] but not pressed.
  final double elevation;

  /// The elevation for the button's [Material] when the button is [enabled] and pressed.
  final double highlightElevation;

  /// The elevation for the button's [Material] when the button is not [enabled].
  final double disabledElevation;

  /// The internal padding for the button's [child].
  final EdgeInsetsGeometry padding;

  /// Defines the button's size.
  final BoxConstraints? constraints;

  /// The shape of the button's [Material].
  final ShapeBorder? borderShape;

  /// Defines the duration of animated changes for [shape] and [elevation].
  final Duration animationDuration;

  /// Typically the button's label.
  final Widget? child;

  /// Whether the button is enabled or disabled.
  bool get enabled => onPressed != null;

  /// Configures the minimum size of the tap target.
  final MaterialTapTargetSize materialTapTargetSize;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;


  /// Button type of [ButtonType] i.e, solid, outline, transparent
  final ButtonType type;

  /// Button type of [BShape] i.e, standard, circular, square, icons
  final BShape shape;

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

  /// icon of type [Widget]
  final Widget? icon;

  /// icon type of [Position] i.e, start, end
  final Position position;

  /// on true state blockButton gives block size button
  final bool? blockButton;

  /// on true state full width Button gives full width button
  final bool? fullWidthButton;

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
  Widget? icon;
  Function? onPressed;
  late ButtonType type;
  late BShape shape;
  late double size;
  late Position position;
  late BoxShadow boxShadow;

  final Set<MaterialState> _states = <MaterialState>{};

  @override
  void initState() {
    color = widget.color;
    textColor = widget.textColor;
    child = widget.text != null ? Text(widget.text!) : widget.child;
    icon = widget.icon;
    onPressed = widget.onPressed;
    type = widget.type;
    shape = widget.shape;
    size = widget.size;
    position = widget.position;
    disabledColor = widget.disabledColor;
    disabledTextColor = widget.disabledTextColor;
    _updateState(
      MaterialState.disabled,
      !widget.enabled,
    );
    super.initState();
  }

  bool get _focused => _states.contains(MaterialState.focused);
  bool get _pressed => _states.contains(MaterialState.pressed);
  bool get _disabled => _states.contains(MaterialState.disabled);

  double? buttonWidth() {
    double? buttonWidth = 0;
    if (widget.blockButton == true) {
      buttonWidth = MediaQuery.of(context).size.width * 0.88;
    } else if (widget.fullWidthButton == true) {
      buttonWidth = MediaQuery.of(context).size.width;
    } else {
      buttonWidth = widget.width;
    }
    return buttonWidth;
  }

  void _updateState(MaterialState state, bool value) {
    value ? _states.add(state) : _states.remove(state);
  }

  void _handleHighlightChanged(bool value) {
    if (_pressed != value) {
      setState(() {
        _updateState(MaterialState.pressed, value);
        if (widget.onHighlightChanged != null) {
          widget.onHighlightChanged!(value);
        }
      });
    }
  }
  void _handleFocusedChanged(bool value) {
    if (_focused != value) {
      setState(() {
        _updateState(MaterialState.focused, value);
      });
    }
  }

  @override
  void didUpdateWidget(JPButton oldWidget) {
    _updateState(MaterialState.disabled, !widget.enabled);
    // If the button is disabled while a press gesture is currently ongoing,
    // InkWell makes a call to handleHighlightChanged. This causes an exception
    // because it calls setState in the middle of a build. To preempt this, we
    // manually update pressed to false when this situation occurs.
    if (_disabled && _pressed) {
      _handleHighlightChanged(false);
    }
    color = widget.color;
    textColor = widget.textColor;
    child = widget.text != null ? Text(widget.text!) : widget.child;
    icon = widget.icon;
    onPressed = widget.onPressed;
    type = widget.type;
    shape = widget.shape;
    size = widget.size;
    position = widget.position;
    disabledColor = widget.disabledColor;
    disabledTextColor = widget.disabledTextColor;
    _updateState(
      MaterialState.disabled,
      !widget.enabled,
    );
    super.didUpdateWidget(oldWidget);
  }

  double get _effectiveElevation {
    // These conditionals are in order of precedence, so be careful about
    // reorganizing them.
    if (_disabled) {
      return widget.disabledElevation;
    }
    if (_pressed) {
      return widget.highlightElevation;
    }
    return widget.elevation;
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
      if (widget.type == ButtonType.transparent ||
          widget.type == ButtonType.outline ) {
        return JPColor.WHITE;
      }
      if (disabledColor != null) {
        return disabledColor!;
      } else {
        return color.withOpacity(0.48);
      }
    }

    Color getColor() {
      if (widget.type == ButtonType.transparent ||
          widget.type == ButtonType.outline ) {
        return JPColor.WHITE;
      }
      final Color fillColor = color;
      return fillColor;
    }

    Color getDisabledTextColor() {
      if (disabledTextColor != null) {
        return disabledTextColor!;
      } else if (widget.type == ButtonType.outline ||
          widget.type == ButtonType.transparent) {
        return color;
      } else {
        return JPColor.WHITE;
      }
    }

    Color getTextColor() {
      if (widget.type == ButtonType.outline ||
          widget.type == ButtonType.transparent) {
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
    final Color themeColor =
    Theme.of(context).colorScheme.onSurface.withOpacity(0.12);
    final BorderSide outlineBorder = BorderSide(
      color: widget.borderSide == null
          ? getBorderColor()
          : widget.borderSide!.color,
      width: (widget.borderSide?.width == null
          ? widget.type == ButtonType.outline
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

    final BorderSide shapeBorder = widget.type == ButtonType.outline
        ? outlineBorder
        : widget.borderSide ??
        BorderSide(
          color: getBorderColor(),
          width: 0,
        );

    if (shape ==BShape.circular) {
      shapeBorderType = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          50,
        ),
        side: shapeBorder,
      );
    } else if (shape == BShape.square) {
      shapeBorderType = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
        side: shapeBorder,
      );
    } else if (shape == BShape.standard) {
      shapeBorderType = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3),
        side: shapeBorder,
      );
    } else {
      shapeBorderType = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: shapeBorder,
      );
    }

    BoxDecoration? getBoxShadow() {
      if (widget.type != ButtonType.transparent) {
        if (widget.boxShadow == null && widget.buttonBoxShadow != true) {
          return null;
        } else {
          return BoxDecoration(
            color: widget.type == ButtonType.transparent ||
                widget.type == ButtonType.outline
                ? Colors.transparent
                : color,
            borderRadius: widget.shape == BShape.circular
                ? BorderRadius.circular(50)
                : widget.shape == BShape.standard
                ? BorderRadius.circular(5)
                : BorderRadius.zero,
            boxShadow: [
              widget.boxShadow == null && widget.buttonBoxShadow == true
                  ? BoxShadow(
                color: themeColor,
                blurRadius: 1.5,
                spreadRadius: 2,
                offset: Offset.zero,
              )
                  : widget.boxShadow != null
                  ? widget.boxShadow!
                  : BoxShadow(
                color: Theme.of(context).canvasColor,
                blurRadius: 0,
                spreadRadius: 0,
                offset: Offset.zero,
              ),
            ],
          );
        }
      }
      return null;
    }

    TextStyle getTextStyle() {
      if (widget.size == JPSize.SMALL) {
        return TextStyle(
          color: widget.enabled ? getTextColor() : getDisabledTextColor(),
          fontSize: 12,
        );
      } else if (widget.size == JPSize.MEDIUM) {
        return TextStyle(
          color: widget.enabled ? getTextColor() : getDisabledTextColor(),
          fontSize: 13,
          fontWeight: FontWeight.w400,
        );
      } else if (widget.size == JPSize.FULL) {
        return TextStyle(
          color: widget.enabled ? getTextColor() : getDisabledTextColor(),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        );
      }
      return TextStyle(
        color: widget.enabled ? getTextColor() : getDisabledTextColor(),
        fontSize: 13,
        fontWeight: FontWeight.w400,
      );
    }

    final Widget result = Container(
      constraints: icon == null
          ? const BoxConstraints(minWidth: 80)
          : const BoxConstraints(minWidth: 90),
      decoration: widget.type == ButtonType.solid ? getBoxShadow() : null,
      child: Material(
        elevation: _effectiveElevation,
        textStyle: widget.textStyle == null ? getTextStyle() : widget.textStyle,
        shape: widget.type == ButtonType.transparent
            ? null
            : widget.borderShape ?? shapeBorderType,
        color: widget.enabled ? getColor() : getDisabledFillColor(),
        type: MaterialType.button,
        child: InkWell(
          focusNode: widget.focusNode,
          canRequestFocus: widget.enabled,
          onFocusChange: _handleFocusedChanged,
          autofocus: widget.autofocus,
          onTap: widget.onPressed,
          splashColor: widget.splashColor,
          highlightColor: widget.highlightColor,
          focusColor: widget.focusColor,
          customBorder: widget.type == ButtonType.transparent
              ? null
              : widget.borderShape ?? shapeBorderType,
          child: IconTheme.merge(
            data: IconThemeData(color: effectiveTextColor),
            child: Container(
              height: size,
              width: buttonWidth(),
              padding: widget.padding,
              child: Center(
                widthFactor: 1,
                heightFactor: 1,
                child: icon != null &&
                    child != null &&
                    (position == Position.start)
                    ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    icon!,
                    const SizedBox(width: 8),
                    child!
                  ],
                )
                    : icon != null &&
                    child != null &&
                    (position == Position.end)
                    ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    child!,
                    const SizedBox(width: 8),
                    icon!
                  ],
                )
                    : child,
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
        child: Focus(
          focusNode: widget.focusNode,
          onFocusChange: _handleFocusedChanged,
          autofocus: widget.autofocus,
          child: result,
        ),
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

