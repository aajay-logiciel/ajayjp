import 'package:flutter/material.dart';
import 'package:jp_ui_kit/Text/fontweight.dart';
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
          padding: const EdgeInsets.all(20),
          child: Column(
            children:  [
              const JPText(text: "Default"),
              space(),
              const JPText(text: "This is new text "),
              space(),
              const JPText(text: "This is new text ",
                textColor: Colors.red,
                fontFamily: JPFontFamily.montserrat,
                fontWeight: JPFontWeight.bold,
                textSize: JPTextSize.heading1,
              ),

            ],
          ),
        ),
      ),
    );
  }
  Widget space() => const SizedBox(
    height: 20,
  );
}
