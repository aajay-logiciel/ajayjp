import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPRadioButton/index.dart';
import 'package:jp_ui_kit/JPRadioButton/jp_radiobutton.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class RadiobuttonClass extends StatefulWidget {
  const RadiobuttonClass({Key? key}) : super(key: key);

  @override
  _RadiobuttonClassState createState() => _RadiobuttonClassState();
}

class _RadiobuttonClassState extends State<RadiobuttonClass> {
  List<JPRadioData> data = [
    JPRadioData(label: 'label', disabled: true),
    JPRadioData(label: 'label1'),
    JPRadioData(label: 'label2'),
    JPRadioData(label: 'label3'),
    JPRadioData(label: 'label4')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              JPRadioButton(
                jpRadioData: data,
                isTextClickable: true,
              ),
              const JPNRadioButton(),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
