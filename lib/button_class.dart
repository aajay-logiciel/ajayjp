import 'package:flutter/material.dart';
import 'package:jp_ui_kit/Button/color_type.dart';
import 'package:jp_ui_kit/Button/size.dart';
import 'package:jp_ui_kit/CommonFiles/icon_position.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class ButtonClass extends StatelessWidget {
  const ButtonClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const JPText(
            text: "Button",
            textSize: JPTextSize.heading1,
            textColor: JPColor.white,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const JPText(text: "Standard"),
                space(),
                const JPButton(
                  iconData: Icons.eleven_mp,
                  text: 'Button Normal',
                  size: JPSize.mediumWithIcon,
                  borderColor: JPColorType.tertiary,
                ),
                space(),
                const JPButton(
                  text: "Button",
                  textSize: JPTextSize.heading1,
                ),
                space(),
                const JPText(text: "Outline"),
                space(),
                const JPButton(
                    //text: "Button",
                    ),
                space(),
                const JPButton(
                  text: "Button",
                ),
                space(),
                const JPText(text: "Large"),
                space(),
                const JPButton(
                  text: "Large Button",
                  disabled: true,
                  colorType: JPColorType.tertiary,
                ),
                space(),
                const JPButton(
                  borderColor: JPColorType.tertiary,
                  text: "Large Button",
                ),
                space(),
                const JPButton(
                  text: "Large Button",
                  colorType: JPColorType.lightGray,
                ),
                space(),
                const JPText(text: "Medium"),
                space(),
                const JPButton(
                  text: "Medium Button",
                  size: JPSize.medium,
                ),
                space(),
                const JPText(text: "Small"),
                space(),
                const JPButton(
                  text: "Small",
                  size: JPSize.small,
                ),
                space(),
                const JPButton(
                  text: "Small Button",
                  size: JPSize.small,
                ),
                space(),
                const JPText(text: "Icon with Text"),
                space(),
                const JPButton(
                  iconData: Icons.add,
                  text: "LOAD MORE",
                ),
                space(),
                space(),
                const JPButton(
                  iconData: Icons.eleven_mp,
                  text: "Loading Button",
                  iconPosition: JPIconPosition.end,
                ),
                space(),
                space(),
                const JPText(text: "Icon"),
                space(),
                const JPButton(
                  iconData: Icons.eleven_mp,
                ),
                space(),
                const JPButton(
                  iconData: Icons.eleven_mp,
                  iconColor: Colors.pink,
                ),
                const JPButton(
                  borderColor: JPColorType.tertiary,
                  text: "Large Button",
                  size: JPSize.small,
                  colorType: JPColorType.lightGray,
                ),
              ],
            ),
          ),
        ));
  }

  Widget space() => const SizedBox(
        height: 20,
      );
}
