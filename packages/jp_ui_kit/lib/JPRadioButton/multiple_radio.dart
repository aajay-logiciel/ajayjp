import 'package:flutter/material.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class JPMultipleRadioBox extends StatefulWidget {
  const JPMultipleRadioBox({
    this.jpRadioData,
    Key? key}) : super(key: key);
  final List<JPRadioData>? jpRadioData;
  @override
  _JPMultipleRadioBoxState createState() => _JPMultipleRadioBoxState();
}


class _JPMultipleRadioBoxState extends State<JPMultipleRadioBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: widget.jpRadioData!.length,
          itemBuilder: (context,index){
            return  JPRadioBox(
              text: widget.jpRadioData!.elementAt(index).label,
              value: index,
            );
          }),
    );
  }
}