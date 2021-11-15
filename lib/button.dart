import 'package:flutter/material.dart';
import 'package:jp/checkbox.dart';
import 'package:jp/text.dart';
import 'package:jp/toggle.dart';
import 'package:jp_ui_kit/JPButton/jp_button.dart';
import 'package:jp_ui_kit/JPButton/jp_button_color_type.dart';
import 'package:jp_ui_kit/JPButton/jp_button_size.dart';
import 'package:jp_ui_kit/JPCommonFiles/jp_shape.dart';
import 'package:jp_ui_kit/JPText/jp_fontfamily.dart';
import 'package:jp_ui_kit/JPText/jp_fontweight.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';
import 'package:get/get.dart';

import 'Badges.dart';
import 'Radiobutton.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
      ),
      body:Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          JPNButton(
            iconData: Icons.eleven_mp,
            text: "LOAD MORE ",

          ),
          SizedBox(
            height: 20,
          ),
          JPNButton(
          text: "button",
            backgroundColor: Colors.red,
          ),
          const SizedBox(
            height: 20,
          ),
          JPNButton(
            text: "Go to text",
            onPressed: (){

               Get.to( const TextClass());
            },
          ),
          const SizedBox(
            height: 20,
          ),
          JPNButton(
            backgroundColor: Colors.green,
            text: "Go to Checkbox",
            onPressed: (){

              Get.to( const CheckboxClass());
            },
          ),
          const SizedBox(
            height: 20,
          ),
          JPNButton(
            text: "Go to Radiobutton",
            onPressed: (){
              Get.to( const Radiobutton());
            },
          ),
          const SizedBox(
            height: 20,
          ),
          JPNButton(
            text: "Go to Toggle",
            onPressed: (){
              Get.to( const Toggle());
            },
          ),
          const SizedBox(
            height: 20,
          ),
          JPNButton(
            text: "Go to Badges",
            onPressed: (){
              Get.to( const Badges());
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      )
    );
  }
}
