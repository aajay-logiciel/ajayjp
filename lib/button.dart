import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPButton/jp_button.dart';
import 'package:jp_ui_kit/JPButton/jp_button_size.dart';
import 'package:jp_ui_kit/JPButton/jp_button_type.dart';
import 'package:jp_ui_kit/JPCommonFiles/jp_colors.dart';
import 'package:jp_ui_kit/JPCommonFiles/jp_shape.dart';
import 'package:jp_ui_kit/JPCommonFiles/jp_size.dart';
import 'package:jp_ui_kit/JPText/jp_text.dart';
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
            children:  [
              JPText(text:"Full Buttons"),
              JPButton(
                iconData: Icons.eleven_mp,
              ),
              JPButton(

              ),
              SizedBox(
                height: 5,
              ),
              JPButton(
                onPressed: (){},
                text: "NORMAL BUTTON",
                jpButtonwidth: JPButtonSize.large,
                jpButtonhight: JPButtonSize.large,
              ),
              SizedBox(
                height: 5,
              ),
              JPButton(
                onPressed: (){},
                shape: JPShape.circular,
                text: "TERTIARY BUTTON",
                color: JPColor.TERTIARY,
                jpButtonwidth: JPButtonSize.large,
                jpButtonhight: JPButtonSize.large,
              ),
              SizedBox(
                height: 5,
              ),
              JPButton(
                onPressed: (){},
                shape: JPShape.circular,
                text: "GRAY BUTTON",
                color: JPColor.LIGHTBUTTON,
                jpButtonwidth: JPButtonSize.large,
                jpButtonhight: JPButtonSize.large,
              ),
              SizedBox(
                height: 5,
              ),
              JPText(text:"Full Disable Buttons"),
              SizedBox(
                height: 5,
              ),
              JPButton(
                enabled: false,
                shape: JPShape.circular,
                text: "NORMAL BUTTON",
                jpButtonwidth: JPButtonSize.large,
                jpButtonhight: JPButtonSize.large,
              ),
              SizedBox(
                height: 5,
              ),
              const JPButton(
                enabled: false,
                shape: JPShape.circular,
                text: "TERTIARY BUTTON",
                color: JPColor.TERTIARY,
                jpButtonwidth: JPButtonSize.large,
                jpButtonhight: JPButtonSize.large,
              ),
              SizedBox(
                height: 5,
              ),
              const JPButton(
                enabled: false,
                shape: JPShape.circular,
                text: "GRAY BUTTON",
                color: JPColor.LIGHTBUTTON,
                jpButtonwidth: JPButtonSize.large,
                jpButtonhight: JPButtonSize.large,
              ),
              SizedBox(
                height: 5,
              ),
              const JPText(text:"MEDIUM Buttons"),
              SizedBox(
                height: 5,
              ),
              JPButton(
                jpButtonwidth: JPButtonSize.medium ,
                jpButtonhight: JPButtonSize.medium,
                onPressed: (){},
                size: JPSize.medium,
                shape: JPShape.circular,
                text: "MEDIUM BUTTON",
              ),
              SizedBox(
                height: 5,
              ),
              const JPText(text:"Small Buttons"),
              SizedBox(
                height: 5,
              ),
              JPButton(
                jpButtonwidth: JPButtonSize.small,
                jpButtonhight: JPButtonSize.small,
                onPressed: (){},
                size: JPSize.small,
                shape: JPShape.circular,
                text: "SMALL",
              ),
              SizedBox(
                height: 5,
              ),
              const JPText(text: "Custom Width Buttons"),
              SizedBox(
                height: 5,
              ),
              JPButton(
                onPressed: (){},
                width: 200,
                shape: JPShape.circular,
                text: "SMALL",
              ),
              SizedBox(
                height: 5,
              ),
              Text("Outline Buttons"),
              SizedBox(
                height: 5,
              ),
              JPButton(
                jpButtonwidth: JPButtonSize.small,
                jpButtonhight: JPButtonSize.small,
                onPressed: (){},
                type: JPButtonType.outline,
                size: JPSize.small,
                shape: JPShape.circular,
                text: "SMALL",
              ),
              SizedBox(
                height: 5,
              ),
              Text("Icon Buttons with text"),
              SizedBox(
                height: 5,
              ),
              JPButton(
                onPressed: (){},
                jpButtonwidth: JPButtonSize.rectangle,
                jpButtonhight: JPButtonSize.rectangle,
                shape: JPShape.circular,
                text: "Loading",
                iconData:Icons.replay_circle_filled ,
                iconcolor: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text("Icon Buttons"),
              SizedBox(
                height: 5,
              ),

              JPButton(
                jpButtonwidth: JPButtonSize.square,
                jpButtonhight: JPButtonSize.square,
                shape: JPShape.standard,
                onPressed: (){},
                text: null,
                iconData:Icons.replay_circle_filled ,
                iconcolor: JPColor.WHITE,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 5,
              ), SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
