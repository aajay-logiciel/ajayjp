import 'package:flutter/material.dart';
import 'package:jp_ui_kit/CheckBox/jp_checkbox.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class CheckboxClass extends StatefulWidget {
  const CheckboxClass({Key? key}) : super(key: key);

  @override
  _CheckboxClassState createState() => _CheckboxClassState();
}

class _CheckboxClassState extends State<CheckboxClass> {
  bool status = false;
  bool status1 = false;
  bool status2 = true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children:  const [

              SizedBox(
                height: 5,
              ),

              JPNCheckbox(
                text: 'abjabc',
                isLabelClickable: false,
              ),

              SizedBox(
                height: 20,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
