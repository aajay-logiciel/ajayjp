import 'package:flutter/material.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class CheckboxClass extends StatefulWidget {
  const CheckboxClass({Key? key}) : super(key: key);

  @override
  _CheckboxClassState createState() => _CheckboxClassState();
}

class _CheckboxClassState extends State<CheckboxClass> {
bool isSelected= false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children:   [
              JPCheckbox(
                text: 'Clicked',
                selected: isSelected,
                isTextClickable: true,
                disabled: true,
              ),
              const JPCheckbox(
                text: 'Clicked',
                isTextClickable: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
