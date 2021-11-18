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
                JPButton(
                  text: 'BUTTON',
                  onPressed: () {},
                ),
                space(),
                space(),
                text('FLAT BUTTONS'),
                space(),
                JPButton(
                  text: ("PRIMARY BUTTON"),
                  colorType: JPButtonColorType.primary,
                  onPressed: () {},
                ),
                space(),
                const JPButton(
                  text: ("PRIMARY BUTTON"),
                  colorType: JPButtonColorType.primary,
                  disabled: true,
                ),
                space(),
                JPButton(
                  colorType: JPButtonColorType.primary,
                  iconData: Icons.circle,
                  onPressed: () {},
                ),
                space(),
                JPButton(
                  text: ("TERTIARY BUTTON"),
                  colorType: JPButtonColorType.tertiary,
                  onPressed: () {},
                ),
                space(),
                const JPButton(
                  text: ("TERTIARY BUTTON"),
                  colorType: JPButtonColorType.tertiary,
                  disabled: true,
                ),
                space(),
                JPButton(
                  iconData: Icons.circle,
                  colorType: JPButtonColorType.tertiary,
                  onPressed: () {},
                ),
                space(),
                JPButton(
                  text: ("GRAY BUTTON"),
                  colorType: JPButtonColorType.lightGray,
                  onPressed: () {},
                ),
                space(),
                const JPButton(
                  text: ("GRAY BUTTON"),
                  colorType: JPButtonColorType.lightGray,
                  disabled: true,
                ),
                space(),
                JPButton(
                  iconData: Icons.circle,
                  colorType: JPButtonColorType.lightGray,
                  iconColor: JPColor.tertiary,
                  onPressed: () {},
                ),
                space(),
                space(),
                text('LARGE BUTTONS'),
                space(),
                JPButton(
                  text: "BUTTON",
                  size: JPButtonSize.large,
                  onPressed: () {},
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
                JPButton(
                  text: "BUTTON",
                  size: JPButtonSize.large,
                  colorType: JPButtonColorType.tertiary,
                  onPressed: () {},
                ),
                space(),
                JPButton(
                  text: "BUTTON",
                  size: JPButtonSize.large,
                  colorType: JPButtonColorType.lightGray,
                  onPressed: () {},
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
                JPButton(
                  text: "BUTTON",
                  size: JPButtonSize.medium,
                  onPressed: () {},
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
                JPButton(
                  text: "BUTTON",
                  size: JPButtonSize.medium,
                  colorType: JPButtonColorType.tertiary,
                  onPressed: () {},
                ),
                space(),
                JPButton(
                  text: "BUTTON",
                  size: JPButtonSize.medium,
                  colorType: JPButtonColorType.lightGray,
                  onPressed: () {},
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
                        JPButton(
                          text: 'ADD',
                          size: JPButtonSize.small,
                          onPressed: () {},
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
                        JPButton(
                          text: 'BUTTON',
                          size: JPButtonSize.small,
                          colorType: JPButtonColorType.tertiary,
                          onPressed: () {},
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
                        JPButton(
                          text: 'ADD',
                          size: JPButtonSize.small,
                          colorType: JPButtonColorType.lightGray,
                          onPressed: () {},
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
                JPButton(
                  text: 'ADD',
                  type: JPButtonType.outline,
                  size: JPButtonSize.small,
                  onPressed: () {},
                ),
                space(),
                const JPButton(
                  text: 'ADD',
                  type: JPButtonType.outline,
                  size: JPButtonSize.small,
                  disabled: true,
                ),
                space(),
                text(' LOAD MORE BUTTONS'),
                space(),
                JPButton(
                  text: "LOAD MORE",
                  iconData: Icons.circle,
                  size: JPButtonSize.mediumWithIcon,
                  onPressed: () {},
                ),
                space(),
                space(),
                text('ICON BUTTON'),
                space(),
                JPButton(
                  iconData: Icons.eleven_mp,
                  onPressed: () {},
                ),
                space(),
                JPButton(
                  iconData: Icons.eleven_mp,
                  size: JPButtonSize.mediumWithIcon,
                  onPressed: () {},
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

  Widget text(String text1) => Align(
    alignment: Alignment.topLeft,
    child: Container(
      padding: const EdgeInsets.only(
        bottom: 5, // Space between underline and text
      ),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(
            color: Colors.black,
            width: 1.0, // Underline thickness
          ))
      ),
      child: JPText(
        text: text1,
        textSize: JPTextSize.heading2,
        fontWeight: JPFontWeight.bold,
        maxLine: 2,
      ),
    ),
  );
}


