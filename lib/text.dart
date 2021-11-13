import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPText/jp_fontfamily.dart';
import 'package:jp_ui_kit/JPText/jp_fontweight.dart';
import 'package:jp_ui_kit/JPText/jp_text.dart';
import 'package:jp_ui_kit/JPText/jp_textsize.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class TextClass extends StatelessWidget {
  const TextClass(String s, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children:  [
             SizedBox(
                height: 20,
              ),
              Column(
                children: const [
                  JPText(text: "This is new text",
                    textcolor: Colors.red,
                    textSize: JPTextSize.Heading_1,
                  ),

                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_1,
                    fontfamily: JPFontFamily.Roboto,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_2,
                    fontfamily: JPFontFamily.Roboto,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_3,
                    fontfamily: JPFontFamily.Roboto,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_4,
                    fontfamily: JPFontFamily.Roboto,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_5,
                    fontfamily: JPFontFamily.Roboto,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_6,
                    fontfamily: JPFontFamily.Roboto,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_1,
                    fontfamily: JPFontFamily.Montserrat,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_2,
                    fontfamily: JPFontFamily.Montserrat,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_3,
                    fontfamily: JPFontFamily.Montserrat,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_4,
                    fontfamily: JPFontFamily.Montserrat,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_5,
                    fontfamily: JPFontFamily.Montserrat,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_6,
                    fontfamily: JPFontFamily.Montserrat,
                    fontWeight: JPFontWeight.MEDIUM,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_1,
                    fontfamily: JPFontFamily.Montserrat,
                    fontWeight: JPFontWeight.MEDIUM,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_2,
                    fontfamily: JPFontFamily.Montserrat,
                    fontWeight: JPFontWeight.MEDIUM,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_3,
                    fontfamily: JPFontFamily.Montserrat,
                    fontWeight: JPFontWeight.MEDIUM,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_4,
                    fontfamily: JPFontFamily.Montserrat,
                    fontWeight: JPFontWeight.MEDIUM,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_5,
                    fontfamily: JPFontFamily.Montserrat,
                    fontWeight: JPFontWeight.MEDIUM,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.Heading_6,
                    fontfamily: JPFontFamily.Montserrat,
                    fontWeight: JPFontWeight.MEDIUM,
                  ),

                ],
              ),

              JPText(text: "This is new text",
                fontfamily: JPFontFamily.DancingScript,
                textSize: JPTextSize.Heading_1,),



     
          

            ],
          ),
        ),
      ),
    );
  }
}
