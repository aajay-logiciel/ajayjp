import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPText/jp_fontfamily.dart';
import 'package:jp_ui_kit/JPText/jp_fontweight.dart';
import 'package:jp_ui_kit/JPText/jp_text.dart';
import 'package:jp_ui_kit/JPText/jp_textsize.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class TextClass extends StatelessWidget {
  const TextClass( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text"),
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
                    textSize: JPTextSize.heading_1,
                  ),

                  JPText(text: "This is new text",
                    textSize: JPTextSize.heading_1,
                    fontfamily: JPFontFamily.roboto,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.heading_2,
                    fontfamily: JPFontFamily.roboto,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.heading_3,
                    fontfamily: JPFontFamily.roboto,
                  ),
                  JPText(text: "This is new text",
                    textSize: JPTextSize.heading_4,
                    fontfamily: JPFontFamily.roboto,
                  ),


                ],
              ),

          

            ],
          ),
        ),
      ),
    );
  }
}
