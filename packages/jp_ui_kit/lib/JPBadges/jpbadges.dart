import 'package:flutter/material.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class JPBadges extends StatelessWidget {
  const JPBadges({this.backgroundcolor= JPColor.PRIMARY,
    required this.text,
    Key? key}) : super(key: key);

  final Color? backgroundcolor ;
  final String text;
  @override
  Widget build(BuildContext context) {

    return Container(
      constraints: const BoxConstraints(
           minWidth: 18,maxWidth: double.infinity,maxHeight: 18,minHeight: 18),
      decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(50)
      ),
      child:  Padding(
          padding: EdgeInsets.symmetric(vertical: 2.0,horizontal: 5.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto',
                color: JPColor.WHITE,
              ),
            )
          ),
    );
  }
}
