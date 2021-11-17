import 'package:flutter/material.dart';
import 'package:jp_ui_kit/Button/color_type.dart';
import 'package:jp_ui_kit/Button/size.dart';
import 'package:jp_ui_kit/CommonFiles/icon_position.dart';
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
                const JPButton(
                  iconData: Icons.circle_outlined,
                  iconPosition: JPIconPosition.end,
                  size: JPButtonSize.large,
                  text: 'LOAD MORE',
                ),
                const JPButton(
                  text: 'ajshdka',
                  type: JPButtonType.outline,
                ),
                const JPButton(
                  iconData: Icons.circle,
                  text:'Loading',
                  iconPosition: JPIconPosition.end,
                ),
                text('Null Text Button'),
                space(),
                const JPButton(),
                space(),
                space(),
                text('Background Change Button With Text, Large Size'),
                space(),
                const JPButton(
                  text: ("Normal"),
                  colorType: JPButtonColorType.primary,
                ),
                space(),
                const JPButton(
                  text: ("Normal"),
                  colorType: JPButtonColorType.primary,
                  disabled: true,
                ),
                space(),
                const JPButton(
                  text: ("Normal"),
                  colorType: JPButtonColorType.tertiary,
                ),
                space(),
                const JPButton(
                  text: ("Normal"),
                  colorType: JPButtonColorType.tertiary,
                  disabled: true,
                ),
                space(),
                const JPButton(
                  text: ("Normal"),
                  colorType: JPButtonColorType.lightGray,
                ),
                space(),
                const JPButton(
                  text: ("Normal"),
                  colorType: JPButtonColorType.lightGray,
                  disabled: true,
                ),
                space(),
                space(),
                text(' Button With Text With Medium Size'),
                space(),
                const JPButton(
                  text: "Medium",
                  size: JPButtonSize.medium,
                ),
                space(),
                const JPButton(
                  text: "Medium",
                  size: JPButtonSize.medium,
                  colorType: JPButtonColorType.tertiary,
                ),
                space(),
                const JPButton(
                  text: "Medium",
                  size: JPButtonSize.medium,
                  colorType: JPButtonColorType.lightGray,
                ),
                space(),
                space(),
                text(' Button With Text With Small Size'),
                space(),
                Wrap(
                  children: [
                    const JPButton(
                      text: "Small",
                      size: JPButtonSize.small,
                    ),
                    space(),
                    const JPButton(
                      text: "Small",
                      size: JPButtonSize.small,
                      colorType: JPButtonColorType.tertiary,
                    ),
                    space(),
                    const JPButton(
                      text: "Small",
                      size: JPButtonSize.small,
                      colorType: JPButtonColorType.lightGray,
                    ),
                  ],
                ),
                space(),
                space(),
                text(' Button With Text And Icon'),
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
                text('Border Change Button'),
                space(),
                Wrap(
                  children: [
                    const JPButton(
                      text: "Small",
                      size: JPButtonSize.small,
                      colorType: JPButtonColorType.tertiary,
                    ),
                    space(),
                    const JPButton(
                      text: "Small",
                      textColor: JPColor.warning,
                      size: JPButtonSize.small,
                      colorType: JPButtonColorType.primary,
                    ),
                  ],
                ),
                space(),
                space(),
                text('Icon Button'),
                space(),
                const JPButton(
                  iconData: Icons.eleven_mp,
                  iconColor: JPColor.tertiary,
                ),
                space(),
                const JPButton(
                  iconData: Icons.plus_one,
                  size: JPButtonSize.smallIcon,
                )
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
          textSize: JPTextSize.heading1,
          fontWeight: JPFontWeight.bold,
        ),
      );
}
