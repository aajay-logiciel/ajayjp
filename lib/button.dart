import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPButton/jp_button.dart';
import 'package:jp_ui_kit/JPButton/jp_button_color_type.dart';
import 'package:jp_ui_kit/JPButton/jp_button_size.dart';
import 'package:jp_ui_kit/JPButton/jp_button_type.dart';
import 'package:jp_ui_kit/JPCommonFiles/jp_colors.dart';
import 'package:jp_ui_kit/JPCommonFiles/jp_shape.dart';
import 'package:jp_ui_kit/JPCommonFiles/jp_size.dart';
import 'package:jp_ui_kit/JPText/jp_text.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';
class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children:    [
              JPButton(
                iconData: Icons.eleven_mp,
               // text: "Normal",
                //jpButtonColorType: JPButtonColorType.tertiary,
               // jpButtonwidth: JPButtonSize.rectangle,
              ),
              JPButton(
iconData: Icons.account_balance,
              text: "hs,sda",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
