import 'package:flutter/material.dart';
import 'package:jp_ui_kit/Button/color_type.dart';
import 'package:jp_ui_kit/Button/size.dart';
import 'package:jp_ui_kit/Text/fontweight.dart';
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
                text('Null Text Button'),
                space(),
                const JPButton(
                  text: 'HELLO BUTTON',
                  disabled: true,
                  type: JPButtonType.outline,
                ),
                space(),
                space(),
                text('FLAT BUTTONS'),
                space(),
                const JPButton(
                  text: ("PRIMARY BUTTON"),
                  colorType: JPButtonColorType.primary,
                ),
                space(),
                const JPButton(
                  text: ("PRIMARY BUTTON"),
                  colorType: JPButtonColorType.primary,
                  disabled: true,
                ),
                space(),
                const JPButton(
                  colorType: JPButtonColorType.primary,
                  iconData: Icons.circle,
                ),
                space(),
                const JPButton(
                  text: ("TERTIARY BUTTON"),
                  colorType: JPButtonColorType.tertiary,
                ),
                space(),
                const JPButton(
                  text: ("TERTIARY BUTTON"),
                  colorType: JPButtonColorType.tertiary,
                  disabled: true,
                ),
                space(),
                const JPButton(
                  iconData: Icons.circle,
                  colorType: JPButtonColorType.tertiary,
                ),
                space(),
                const JPButton(
                  text: ("GRAY BUTTON"),
                  colorType: JPButtonColorType.lightGray,
                ),
                space(),
                const JPButton(
                  text: ("GRAY BUTTON"),
                  colorType: JPButtonColorType.lightGray,
                  disabled: true,
                ),
                space(),
                const JPButton(
                  iconData: Icons.circle,
                  colorType: JPButtonColorType.lightGray,
                  iconColor: JPColor.tertiary,
                ),
                space(),
                space(),
                text('LARGE BUTTONS'),
                space(),
                const JPButton(
                  text: "BUTTON",
                  size: JPButtonSize.large,
                ),
                space(),
                const JPButton(
                  text: "BUTTON",
                  size: JPButtonSize.large,
                  disabled: true,
                ),
                space(),
                const JPButton(
                    text: "BUTTON",
                    size: JPButtonSize.large,
                    colorType: JPButtonColorType.tertiary,
                    disabled: true),
                space(),
                const JPButton(
                  text: "BUTTON",
                  size: JPButtonSize.large,
                  colorType: JPButtonColorType.tertiary,
                ),
                space(),
                const JPButton(
                  text: "BUTTON",
                  size: JPButtonSize.large,
                  colorType: JPButtonColorType.lightGray,
                ),
                space(),
                const JPButton(
                  text: "BUTTON",
                  size: JPButtonSize.large,
                  colorType: JPButtonColorType.lightGray,
                  disabled: true,
                ),
                space(),
                space(),
                text('MEDIUM BUTTONS'),
                space(),
                const JPButton(
                  text: "BUTTON",
                  size: JPButtonSize.medium,
                ),
                space(),
                const JPButton(
                  text: "BUTTON",
                  size: JPButtonSize.medium,
                  disabled: true,
                ),
                space(),
                const JPButton(
                    text: "BUTTON",
                    size: JPButtonSize.medium,
                    colorType: JPButtonColorType.tertiary,
                    disabled: true),
                space(),
                const JPButton(
                  text: "BUTTON",
                  size: JPButtonSize.medium,
                  colorType: JPButtonColorType.tertiary,
                ),
                space(),
                const JPButton(
                  text: "BUTTON",
                  size: JPButtonSize.medium,
                  colorType: JPButtonColorType.lightGray,
                ),
                space(),
                const JPButton(
                  text: "BUTTON",
                  size: JPButtonSize.medium,
                  colorType: JPButtonColorType.lightGray,
                  disabled: true,
                ),
                space(),
                space(),
                text(' SMALL BUTTONS'),
                space(),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    Column(
                      children: [
                        const JPButton(
                          text: 'ADD',
                          size: JPButtonSize.small,
                        ),
                        space(),
                        const JPButton(
                          text: 'ADD',
                          size: JPButtonSize.small,
                          disabled: true,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const JPButton(
                          text: 'BUTTON',
                          size: JPButtonSize.small,
                          colorType: JPButtonColorType.tertiary,
                        ),
                        space(),
                        const JPButton(
                          text: 'ADD',
                          size: JPButtonSize.small,
                          colorType: JPButtonColorType.tertiary,
                          disabled: true,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const JPButton(
                          text: 'ADD',
                          size: JPButtonSize.small,
                          colorType: JPButtonColorType.lightGray,
                        ),
                        space(),
                        const JPButton(
                          text: 'ADD',
                          size: JPButtonSize.small,
                          colorType: JPButtonColorType.lightGray,
                          disabled: true,
                        ),
                      ],
                    ),
                  ],
                ),
                space(),
                space(),
                text(' OUTLINE BUTTONS'),
                space(),
                const JPButton(
                  text: 'ADD',
                  type: JPButtonType.outline,
                ),
                space(),
                const JPButton(
                  text: 'ADD',
                  type: JPButtonType.outline,
                  size: JPButtonSize.medium,
                ),
                space(),
                const JPButton(
                  text: 'ADD',
                  type: JPButtonType.outline,
                  size: JPButtonSize.small,
                ),
                space(),
                const JPButton(
                  text: 'ADD',
                  type: JPButtonType.outline,
                  size: JPButtonSize.small,
                  colorType: JPButtonColorType.tertiary,
                ),
                space(),
                const JPButton(
                  text: 'ADD',
                  type: JPButtonType.outline,
                  size: JPButtonSize.small,
                  colorType: JPButtonColorType.lightGray,
                ),
                space(),
                text(' LOAD MORE BUTTONS'),
                space(),
                const JPButton(
                  text: "Large",
                  iconData: Icons.add,
                ),
                space(),
                const JPButton(
                  iconData: Icons.add,
                  text: "Medium",
                  size: JPButtonSize.medium,
                  colorType: JPButtonColorType.tertiary,
                ),
                space(),
                const JPButton(
                  iconData: Icons.add,
                  text: "Medium With Icon",
                  size: JPButtonSize.mediumWithIcon,
                  colorType: JPButtonColorType.tertiary,
                ),
                space(),
                space(),
                text('TEXT COLOR CHANGE '),
                space(),
                const JPButton(
                  text: 'COLOR CHANGE',
                  textColor: JPColor.secondary,
                ),
                space(),
                const JPButton(
                  text: 'COLOR CHANGE',
                  textColor: JPColor.secondary,
                  size: JPButtonSize.large,
                ),
                space(),
                const JPButton(
                  text: 'COLOR CHANGE',
                  textColor: JPColor.secondary,
                  size: JPButtonSize.small,
                ),
                space(),
                space(),
                text('ICON BUTTON'),
                space(),
                const JPButton(
                  iconData: Icons.eleven_mp,
                ),
                space(),
                const JPButton(
                  iconData: Icons.eleven_mp,
                  size: JPButtonSize.mediumWithIcon,
                ),
                space(),
                text('SMALL ICON BUTTON'),
                space(),
                text('Pending because svg is not implemented'),
              ],
            ),
          ),
        ));
  }

  Widget space() => const SizedBox(
        height: 20,
        width: 20,
      );

  Widget text(String text1) => Center(
        child: JPText(
          text: text1,
          textSize: JPTextSize.heading2,
          fontWeight: JPFontWeight.bold,
          maxLine: 2,
        ),
      );
}
