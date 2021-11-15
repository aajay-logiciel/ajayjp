import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPButton/jp_button_color_type.dart';
import 'package:jp_ui_kit/JPButton/jp_button_size.dart';
import 'package:jp_ui_kit/JPButton/jp_icon_position.dart';
import 'package:jp_ui_kit/JPNButton/jp_radius.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';
class JPNButton extends StatefulWidget {
   JPNButton({
     this.enabled=true,
     this.jpButtonColorType,
     this.backgroundColor=JPColor.primary,
     this.buttonType=JPButtonType.solid,
     this.onPressed,
     this.iconColor=JPColor.white,
     this.iconData,
     this.child,
     this.iconPosition=JPIconPosition.start,
     this.text,
     this.jpButtonSize,
    Key? key}) : super(key: key);

  final bool? enabled;
  JPButtonColorType? jpButtonColorType;
  Color? backgroundColor;
  JPButtonType? buttonType;
  Function? onPressed;
  final Widget? child;
  final IconData? iconData;
  final Color? iconColor;
  final JPIconPosition iconPosition;
  final String? text;
  final JPButtonSize? jpButtonSize ;


  @override
  _JPNButtonState createState() => _JPNButtonState();
}

class _JPNButtonState extends State<JPNButton> {


  IconData? iconData;
  Color? iconColor;
  Widget? child;
  JPButtonSize? jpButtonSize;
  JPRadius? jpRadius=JPRadius.circular;
  ShapeBorder? borderShape;
  JPShape? shape;
  String? text;
  JPTextSize? textSize;
  @override
  void initState() {
    text=widget.text;
    iconData=widget.iconData;
    iconColor=widget.iconColor;

    child = text != null ? JPText(text:text!,textcolor: (widget.buttonType==JPButtonType.outline)?JPColor.primary:JPColor.white,textSize: getTextSize(),) : widget.child;
    jpButtonSize=(iconData!=null&&text==null)?JPButtonSize.square:(iconData!=null&&text!=null)?JPButtonSize.rectangle:widget.jpButtonSize;
    shape=(widget.iconData!=null&& child==null)?JPShape.standard:shape;

    // TODO: implement initState
    super.initState();
  }
  getTextSize(){
switch(jpButtonSize){
  case JPButtonSize.large:
    return JPTextSize.Heading_3;
  case JPButtonSize.medium:
    return JPTextSize.Heading_4;
  case JPButtonSize.small:
    return JPTextSize.Heading_6;
  case JPButtonSize.rectangle:
    return JPTextSize.Heading_6;
  default:
    return JPTextSize.Heading_3;
}
  }


  Color? getButtonColor() {
    if (widget.buttonType == JPButtonType.outline) {
      return JPColor.white;
    }
    else {
      switch (widget.jpButtonColorType) {
        case JPButtonColorType.primary:
          return JPColor.primary;
        case JPButtonColorType.tertiary:
          return JPColor.tertiary;
        case JPButtonColorType.light_button:
          return JPColor.light_blue;
        case JPButtonColorType.white:
          return JPColor.white;
        default:
          return JPColor.primary;
      }
    }
  }
  BoxDecoration? getBoxDecoration(){
    switch(jpRadius){
      case JPRadius.circular:
        return BoxDecoration(
         // color:widget.backgroundColor,
          borderRadius: BorderRadius.circular(50),
        );
      case JPRadius.round:
        return BoxDecoration(
         // color:widget.backgroundColor,
          borderRadius: BorderRadius.circular(10),
        );
    }
  }



  @override
  Widget build(BuildContext context) {
    ShapeBorder shapeBorderType;
   double? getButtonWidth(){
      switch(jpButtonSize){
        case JPButtonSize.large:
          return  MediaQuery.of(context).size.width;
        case JPButtonSize.medium:
          return 160.0;
        case JPButtonSize.small:
          return 60.0;
        case JPButtonSize.rectangle:
          return 120.0;
        case JPButtonSize.square:
          return 30;
        default:
          return  MediaQuery.of(context).size.width;
      }
    }
   double? getButtonHeight(){
      switch(jpButtonSize){
        case JPButtonSize.large:
          return 52.0;
        case JPButtonSize.medium:
          return 52.0;
        case JPButtonSize.small:
          return 30;
        case JPButtonSize.rectangle:
          return 32.0;
        case JPButtonSize.square:
          return 30;
        default:
          return 52.0;
      }
    }
    const BorderSide outlineBorder = BorderSide(
      color:JPColor.primary,
      width: 1,
    );
    final BorderSide shapeBorder = widget.buttonType == JPButtonType.outline
        ? outlineBorder
        :const BorderSide(
          color:JPColor.transparent ,
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
    final result = Container(
      constraints: widget.iconData == null
          ? const BoxConstraints(minWidth: 80)
          :(widget.child == null)? const BoxConstraints(minWidth: 30,minHeight: 30):const BoxConstraints(minWidth: 90,maxHeight: 52),
        decoration:getBoxDecoration() ,
      child: Material(
        shape: shapeBorderType,
        type: MaterialType.button,
        color:(widget.jpButtonSize==JPButtonSize.square)?widget.backgroundColor:getButtonColor(),
        child: InkWell(
            customBorder: borderShape ?? shapeBorderType,
          onTap: (widget.enabled==false)?null:(){widget.onPressed;},
          child: IconTheme.merge(
              data: IconThemeData(opacity: (widget.enabled==true)?1:0.3),
              child: Container(
                height: getButtonHeight(),
                width: getButtonWidth(),
                padding:const EdgeInsets.symmetric(horizontal: 8),
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
                          size: 15,
                          color: iconColor,
                        ),
                        const SizedBox(width: 8),
                        child!
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
                          size: 15,
                          color: iconColor,
                        ),
                      ],
                    )
                        : (iconData!=null&& widget.text==null)?Icon(
                      iconData,
                      size: 15,
                      color: iconColor,
                    ):child,
                  ),
                ),
              ),),
        ),
      ),
    );

    return Semantics(
      container: true,
      button: true,
      enabled: widget.enabled,
      child: result,
    );
  }
}