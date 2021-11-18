import 'package:flutter/material.dart';
import 'package:jp_ui_kit/Text/fontweight.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class TextClass extends StatelessWidget {
  const TextClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              text('DEFAULT TEXT'),
              space(),
              const JPText(text: " ROBOTO/ REGULAR/ 14px"),
              space(),
              space(),
              text("MONTSERRAT / REGULAR /SIZE "),
              space(),
              const JPText(
                text: "MONTSERRAT/ REGULAR/ 16px ",
                fontFamily: JPFontFamily.montserrat,
                fontWeight: JPFontWeight.regular,
                textSize: JPTextSize.heading3,
              ),
              const JPText(
                text: "MONTSERRAT/ REGULAR/ 14px ",
                fontFamily: JPFontFamily.montserrat,
                fontWeight: JPFontWeight.regular,
                textSize: JPTextSize.heading4,
              ),
              const JPText(
                text: "MONTSERRAT/ REGULAR/ 12x ",
                fontFamily: JPFontFamily.montserrat,
                fontWeight: JPFontWeight.regular,
                textSize: JPTextSize.heading5,
              ),
              const JPText(
                text: "MONTSERRAT/ REGULAR/ 11x ",
                fontFamily: JPFontFamily.montserrat,
                fontWeight: JPFontWeight.regular,
                textSize: JPTextSize.heading6,
              ),
              space(),
              space(),
              text("MONTSERRAT / MEDIUM /SIZE "),
              space(),
              const JPText(
                text: "MONTSERRAT/ MEDIUM/ 16px ",
                fontFamily: JPFontFamily.montserrat,
                fontWeight: JPFontWeight.medium,
                textSize: JPTextSize.heading3,
              ),
              const JPText(
                text: "MONTSERRAT/ MEDIUM/ 14px ",
                fontFamily: JPFontFamily.montserrat,
                fontWeight: JPFontWeight.medium,
                textSize: JPTextSize.heading4,
              ),
              const JPText(
                text: "MONTSERRAT/ MEDIUM/ 12x ",
                fontFamily: JPFontFamily.montserrat,
                fontWeight: JPFontWeight.medium,
                textSize: JPTextSize.heading5,
              ),
              const JPText(
                text: "MONTSERRAT/ MEDIUM/ 11x ",
                fontFamily: JPFontFamily.montserrat,
                fontWeight: JPFontWeight.medium,
                textSize: JPTextSize.heading6,
              ),
              space(),
              space(),
              text("ROBOTO / REGULAR /SIZE "),
              space(),
              const JPText(
                text: "ROBOTO / REGULAR/ 20px ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.regular,
                textSize: JPTextSize.heading1,
              ),
              const JPText(
                text: "ROBOTO / REGULAR/ 18px ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.regular,
                textSize: JPTextSize.heading2,
              ),
              const JPText(
                text: "ROBOTO / REGULAR/ 16px ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.regular,
                textSize: JPTextSize.heading3,
              ),
              const JPText(
                text: "ROBOTO / REGULAR/ 14px ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.regular,
                textSize: JPTextSize.heading4,
              ),
              const JPText(
                text: "ROBOTO / REGULAR/ 12x ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.regular,
                textSize: JPTextSize.heading5,
              ),
              const JPText(
                text: "ROBOTO / REGULAR/ 11x ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.regular,
                textSize: JPTextSize.heading6,
              ),
              space(),
              space(),
              text("ROBOTO / MEDIUM /SIZE "),
              space(),
              const JPText(
                text: "ROBOTO / MEDIUM/ 20px ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.medium,
                textSize: JPTextSize.heading1,
              ),
              const JPText(
                text: "ROBOTO / MEDIUM/ 18px ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.medium,
                textSize: JPTextSize.heading2,
              ),
              const JPText(
                text: "ROBOTO / MEDIUM/ 16px ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.medium,
                textSize: JPTextSize.heading3,
              ),
              const JPText(
                text: "ROBOTO / MEDIUM/ 14px ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.medium,
                textSize: JPTextSize.heading4,
              ),
              const JPText(
                text: "ROBOTO / MEDIUM/ 12x ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.medium,
                textSize: JPTextSize.heading5,
              ),
              const JPText(
                text: "ROBOTO / MEDIUM/ 11x ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.medium,
                textSize: JPTextSize.heading6,
              ),
              space(),
              space(),
              text("ROBOTO / BOLD /SIZE "),
              space(),
              const JPText(
                text: "ROBOTO / BOLD/ 20px ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.bold,
                textSize: JPTextSize.heading1,
              ),
              const JPText(
                text: "ROBOTO /BOLD/ 18px ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.bold,
                textSize: JPTextSize.heading2,
              ),
              const JPText(
                text: "ROBOTO / BOLD/ 16px ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.bold,
                textSize: JPTextSize.heading3,
              ),
              const JPText(
                text: "ROBOTO / BOLD/ 14px ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.bold,
                textSize: JPTextSize.heading4,
              ),
              const JPText(
                text: "ROBOTO / BOLD/ 12x ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.bold,
                textSize: JPTextSize.heading5,
              ),
              const JPText(
                text: "ROBOTO / BOLD/ 11x ",
                fontFamily: JPFontFamily.roboto,
                fontWeight: JPFontWeight.bold,
                textSize: JPTextSize.heading6,
              ),
              space(),
              space(),


            ],
          ),
        ),
      ),
    );
  }

  Widget space() => const SizedBox(
        height: 20,
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
