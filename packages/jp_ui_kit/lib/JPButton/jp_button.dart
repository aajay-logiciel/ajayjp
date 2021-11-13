import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jp_ui_kit/JPButton/jp_button_color_type.dart';
import 'package:jp_ui_kit/JPButton/jp_button_size.dart';
import 'package:jp_ui_kit/JPButton/jp_icon_position.dart';
import 'package:jp_ui_kit/JPButton/jp_button_type.dart';
import 'package:jp_ui_kit/JPCommonFiles/jp_colors.dart';
import 'package:jp_ui_kit/JPCommonFiles/jp_shape.dart';
import 'package:jp_ui_kit/JPCommonFiles/jp_size.dart';
import 'package:jp_ui_kit/JPText/jp_fontfamily.dart';
import 'package:jp_ui_kit/JPText/jp_fontweight.dart';
import 'package:jp_ui_kit/JPText/jp_text.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';



class JPButton extends StatefulWidget {
   JPButton({
    Key? key,
    this.onPressed,
    this.textStyle,
    this.boxShadow,
    this.buttonBoxShadow,
    this.padding = const EdgeInsets.symmetric(horizontal: 8),
    this.constraints,
    this.borderShape,
    this.child,
    this.type = JPButtonType.solid,
    this.shape = JPShape.circular,
    this.color = JPColor.primary,
    this.jpButtonwidth ,
    this.jpButtonheight ,
    this.textColor,
    this.iconposition = JPIconPosition.start,
    this.size = JPSize.medium,
    this.borderSide,
    this.text,
    this.width,
    this.height,
    this.disabledColor,
    this.disabledTextColor,
    this.iconData,
    this.iconcolor=JPColor.white,
    this.enabled=true,
    this.jpButtonColorType,
  })  :super(key: key);

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
  final bool? enabled;



  /// Button type of [ButtonType] i.e, solid, outline, transparent
  final JPButtonType type;

  /// Button type of [BShape] i.e, standard, circular, square, icons
  final JPShape shape;

  JPButtonSize? jpButtonwidth;

  JPButtonSize? jpButtonheight;

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

  final JPButtonColorType? jpButtonColorType;


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

  JPButtonColorType? jpButtonColorType;

  final Set<MaterialState> _states = <MaterialState>{};

  @override
  void initState() {
   // widget.jpButtonwidth= (widget.iconData!=null)?JPButtonSize.square:JPButtonSize.large;
   // widget.jpButtonheight= (widget.iconData!=null)?JPButtonSize.square:JPButtonSize.large;
    color = widget.color;
    textColor = widget.textColor;
    child = widget.text != null ? JPText(text:widget.text!,textcolor: JPColor.white,) : widget.child;
    iconData = widget.iconData;
    onPressed = widget.onPressed;
    type = widget.type;
    shape = widget.shape;
    size = widget.size;
  //  jpButtonWidth=widget.jpButtonwidth;
    iconposition = widget.iconposition;
    disabledColor = widget.disabledColor;
    disabledTextColor = widget.disabledTextColor;
    jpButtonColorType=((widget.iconData!=null&&widget.text!=null)?JPButtonColorType.white : widget.jpButtonColorType);
    super.initState();
  }



   buttonWidth(){
    /*if(widget.iconData!=null && widget.text==null){
      return 30;
    }
    else{*/
      switch(widget.jpButtonwidth){
        case JPButtonSize.large:
          return MediaQuery.of(context).size.width;
        case JPButtonSize.medium:
          return 160;
        case JPButtonSize.small:
          return 60;
        case JPButtonSize.rectangle:
          return 120;
        case JPButtonSize.square:
          return 30;
      }
   // }

  }

   buttonHeight(){
    if(widget.iconData!=null && widget.text==null){
      return 30;
    }
    else{
      switch(widget.jpButtonwidth){
        case JPButtonSize.large:
          return 52;
        case JPButtonSize.medium:
          return 52;
        case JPButtonSize.small:
          return 26;
        case JPButtonSize.rectangle:
          return 32;
        case JPButtonSize.square:
          return 30;
      }
    }

  }


  @override
  Widget build(BuildContext context) {
    ShapeBorder shapeBorderType;

    Color getBorderColor() {
      if (widget.enabled==true) {
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
      if (widget.type == JPButtonType.outline ) {
        return JPColor.white;
      }
      if (disabledColor != null) {
        return disabledColor!;
      } else {
        return color.withOpacity(0.48);
      }
    }


    Color getDisabledTextColor() {
      if (disabledTextColor != null) {
        return disabledTextColor!;
      } else if (widget.type == JPButtonType.outline ) {
        return color;
      } else {
        return JPColor.white;
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

    final BorderSide shapeBorder = widget.type == JPButtonType.outline
        ? outlineBorder
        : widget.borderSide ??
        BorderSide(
          color: getBorderColor(),
          width: 0,
        );

    if(widget.iconData!=null&&widget.text==null){
      shapeBorderType = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: shapeBorder,
      );
    }
    else{
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
    }




    BoxDecoration? getBoxShadow(){
      switch(widget.type){
        case JPButtonType.outline:
          return BoxDecoration(
            color:JPColor.white,
            borderRadius: widget.shape == JPShape.circular
                ? BorderRadius.circular(50)
                : widget.shape == JPShape.standard
                ? BorderRadius.circular(5)
                : BorderRadius.zero,
          );
        case JPButtonType.solid:
          return BoxDecoration(
            color:color,
            borderRadius: widget.shape == JPShape.circular
                ? BorderRadius.circular(50)
                : widget.shape == JPShape.standard
                ? BorderRadius.circular(5)
                : BorderRadius.zero,
          );
      }
    }

    Color? getButtonColorType(){
      switch(widget.jpButtonColorType){
        case JPButtonColorType.primary:
          return JPColor.primary;
        case JPButtonColorType.tertiary:
          return JPColor.tertiary;
        case JPButtonColorType.white:
          return JPColor.white;
        default:
          return JPColor.primary;
      }
    }

    final Widget result = Container(
      constraints: widget.iconData == null
          ? const BoxConstraints(minWidth: 80)
          :(child == null)? const BoxConstraints(minWidth: 30,minHeight: 30):const BoxConstraints(minWidth: 90),
      decoration: widget.type == JPButtonType.solid ? getBoxShadow() : null,
      child: Material(
        elevation: 0,
        shape: widget.borderShape ?? shapeBorderType,
        color: widget.enabled==true ? (widget.iconData!=null&&widget.text!=null)?(widget.text==null)?widget.color:JPColor.white:getButtonColorType():getDisabledFillColor(),
        type: MaterialType.button,
        child: InkWell(
          onTap:
          (widget.enabled==false)?null:(){widget.onPressed;},

          customBorder: widget.borderShape ?? shapeBorderType,
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
        child: result
    );
  }
}
