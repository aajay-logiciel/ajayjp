import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';


class JPChips extends StatefulWidget {
  const JPChips({this.text="Chip Name",
    this.image,
    this.isCancel=false,
    this.isLeading=false,
    Key? key}) : super(key: key);

  final String text;
  final Widget? image;
  final bool isCancel;
  final bool isLeading;
  @override
  _JPChipsState createState() => _JPChipsState();
}

class _JPChipsState extends State<JPChips> {

  double getWidth(){
    if(widget.isCancel==true &&widget.isCancel==true){
      return 110;
    }
    else if(widget.isLeading==false && widget.isCancel==true){
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
      width: getWidth(),
      constraints: const BoxConstraints(maxWidth: 200,minWidth: 70),
      decoration: BoxDecoration(
        color: JPColor.dimGray,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          imgIcon(),
          txt(),
          clsButton(),
          const SizedBox(width: 10,)
        ],
      ),
    );
  }
Widget txt(){
    return Text(widget.text,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
        color: JPColor.black,
      ),);
}

  Widget imgIcon(){
return Visibility(
  visible: widget.isLeading,
    child:(widget.isLeading==false)?const SizedBox.shrink() :Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 2,color: JPColor.primary)
      ),
      child: ClipRRect(
       borderRadius: BorderRadius.circular(8),
        child: const Icon(Icons.person,size: 14,color: JPColor.primary,),
      ),
    ),
);
  }

  Widget clsButton(){
     return Visibility(
       visible: widget.isCancel,
         child: (widget.isCancel==false)?const SizedBox.shrink():Align(
           alignment: Alignment.topCenter,
           child: SizedBox(
             height: 7,
             width: 7,
             child: IconButton(
                 splashRadius: 1,
                 onPressed: (){},
                 icon: const Icon(Icons.close,color: JPColor.secondary,size: 10,)),
           ),
         ),);
  }
}
