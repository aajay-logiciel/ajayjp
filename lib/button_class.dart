import 'package:flutter/material.dart';
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
              children:  [

                const JPText(text: "Large"),
                space(),
                const JPButton(
                ),
                space(),
                const JPButton(
                  text: "Button",
                  textColor: JPColor.secondary,
                  textSize: JPTextSize.heading_1,
                  backgroundColor: Colors.green,
                ),
                space(),
                const JPButton(
                  text: "Button",
                )
              ],
            ),
          ),
        ));
  }

  Widget space() => const SizedBox(
        height: 20,
      );
}
