import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';


class JPChips extends StatefulWidget {
  const JPChips({this.text="Chip Name",
    this.image,
    this.iscancel=false,
    this.isleading=false,
    Key? key}) : super(key: key);

  final String text;
  final Widget? image;
  final bool iscancel;
  final bool isleading;
  @override
  _JPChipsState createState() => _JPChipsState();
}

class _JPChipsState extends State<JPChips> {

  double getwidth(){
    if(widget.iscancel==true &&widget.iscancel==true){
      return 110;
    }
    else if(widget.isleading==false && widget.iscancel==true){
      return 100;
    }
    else{
      return 77;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
     height: 24,
      width: getwidth(),
      constraints: BoxConstraints(maxWidth: 200,minWidth: 70),
      decoration: BoxDecoration(
        color: JPColor.dimGray,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          imgicon(),
          txt(),
          clsbutton(),
          SizedBox(width: 10,)
        ],
      ),
    );
  }
Widget txt(){
    return Text(widget.text,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
        color: JPColor.black,
      ),);
}

  Widget imgicon(){
return Visibility(
  visible: widget.isleading,
    child:(widget.isleading==false)?SizedBox(width: 0,) :Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 2,color: JPColor.primary)
      ),
      child: ClipRRect(
       borderRadius: BorderRadius.circular(8),
        child: Icon(Icons.person,size: 14,color: JPColor.primary,),
      ),
    ),
);
  }

  Widget clsbutton(){
     return Visibility(
       visible: widget.iscancel,
         child: (widget.iscancel==false)?SizedBox(width: 0,):Align(
           alignment: Alignment.topCenter,
           child: SizedBox(
             height: 7,
             width: 7,
             child: IconButton(
                 splashRadius: 1,
                 onPressed: (){},
                 icon: Icon(Icons.close,color: JPColor.secondary,size: 10,)),
           ),
         ),);
  }
}
