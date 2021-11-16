import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPButton/jp_button_color_type.dart';
import 'package:jp_ui_kit/JPButton/jp_button_size.dart';
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
            textSize: JPTextSize.heading_1,
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
                const JPButton(),
                space(),
                const JPButton(
                  text: "Button",
                  textColor: JPColor.secondary,
                  textSize: JPTextSize.heading_1,
                  backgroundColor: Colors.green,
                ),
                space(),
                const JPText(text: "Outline"),
                space(),
                const JPButton(
                  text: "Button",
                  type: JPButtonType.outline,
                ),
                space(),
                const JPButton(
                  text: "Button",
                  type: JPButtonType.outline,
                  borderColor: Colors.red,
                  textColor: Colors.red,
                ),
                space(),
                const JPText(text: "Large"),
                space(),
                const JPButton(
                  text: "Large Button",
                  enabled: false,
                ),
                space(),
                const JPButton(
                  text: "Large Button",
                  colorType: JPButtonColorType.tertiary,
                ),
                space(),
                const JPButton(
                  text: "Large Button",
                  colorType: JPButtonColorType.lightGray,
                ),
                space(),
                const JPText(text: "Medium"),
                space(),
                const JPButton(
                  text: "Medium Button",
                  size: JPButtonSize.medium,
                ),
                space(),
                const JPText(text: "Small"),
                space(),
                const JPButton(
                  text: "Small",
                  size: JPButtonSize.small,
                ),
                space(),
                const JPButton(
                  text: "Small Button",
                  size: JPButtonSize.small,
                ),
                space(),
                const JPText(text: "Icon with Text"),
                space(),
                const JPButton(
                  iconData: Icons.eleven_mp,
                  text: "Loading",
                ),
                space(),
                space(),
                const JPButton(
                  iconData: Icons.eleven_mp,
                  text: "Loading Button",
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
                  backgroundColor: Colors.greenAccent,
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
