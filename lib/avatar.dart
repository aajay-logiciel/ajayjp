import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';
import 'package:jp_ui_kit/CommonFiles/textsize.dart';
import 'package:jp_ui_kit/Text/index.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const JPText(
          text: "Label",
          textSize: JPTextSize.heading1,
          textColor: JPColor.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
           JPAvatar(),
          ],
        ),
      ),
    );
  }
}
