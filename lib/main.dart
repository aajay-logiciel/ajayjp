import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jp/button.dart';
import 'package:jp/text.dart';
import 'package:jp/toggle.dart';
import 'package:jp_ui_kit/JPButton/jp_button_size.dart';
import 'package:jp_ui_kit/JPCheckBox/jp_checkbox.dart';
import 'package:jp_ui_kit/JPText/jp_fontweight.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';
import 'package:get/get.dart';

import 'checkbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Button(),
    );
  }
}
