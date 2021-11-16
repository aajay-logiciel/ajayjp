import 'package:flutter/material.dart';
import 'package:jp/button_class.dart';
import 'package:jp/text.dart';
import 'package:jp/toggle.dart';
import 'package:jp_ui_kit/Button/size.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';
import 'package:get/get.dart';

import 'Badges.dart';
import 'Radiobutton.dart';
import 'checkbox.dart';
import 'lables.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const JPText(
          text: "Home",
          textSize: JPTextSize.heading1,
          textColor: JPColor.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          spacing: 40,
          runSpacing: 20,
          children: [
            JPButton(
              text: "Button",
              size: JPSize.medium,
              onPressed: () {
                Get.to(const ButtonClass());
              },
            ),
            JPButton(
              text: "Text",
              size: JPSize.medium,
              onPressed: () {
                Get.to(const TextClass());
              },
            ),
            JPButton(
              text: "Checkbox",
              size: JPSize.medium,
              onPressed: () {
                Get.to(const CheckboxClass());
              },
            ),
            JPButton(
              text: "Radiobutton",
              size: JPSize.medium,
              onPressed: () {
                Get.to(const RadiobuttonClass());
              },
            ),
            JPButton(
              text: "Toggle",
              size: JPSize.medium,
              onPressed: () {
                Get.to(const ToggleClass());
              },
            ),
            JPButton(
              text: "Badges",
              size: JPSize.medium,
              onPressed: () {
                Get.to(const BadgesClass());
              },
            ),
            JPButton(
              text: "Labels",
              size: JPSize.medium,
              onPressed: () {
                Get.to(const LabelsClass());
              },
            ),
          ],
        ),
      ),
    );
  }
}
