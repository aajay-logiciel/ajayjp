import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPButton/jp_button.dart';
import 'package:jp_ui_kit/JPButton/jp_button_color_type.dart';
import 'package:jp_ui_kit/JPButton/jp_button_size.dart';
import 'package:jp_ui_kit/JPButton/jp_icon_position.dart';
import 'package:jp_ui_kit/JPCommonFiles/jp_shape.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';
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
            //jpRadius: JPRadius.round,
          //  iconData: Icons.eleven_mp,
           text: "button",
          buttonType: JPButtonType.outline,
          //  jpButtonColorType: JPButtonColorType.primary,
           // jpButtonSize: JPButtonSize.square,
          //  backgroundColor: Colors.green,
          ),
        ],
      )
    );
  }
}
