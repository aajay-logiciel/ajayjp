import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPCheckBox/jp_checkbox.dart';
import 'package:jp_ui_kit/JPRadioButton/grouped_button_orientation.dart';

class Checkbox extends StatefulWidget {
  const Checkbox({Key? key}) : super(key: key);

  @override
  _CheckboxState createState() => _CheckboxState();
}

class _CheckboxState extends State<Checkbox> {
  bool status = false;
  bool status1 = false;
  bool status2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children:  [

              SizedBox(
                height: 5,
              ),


              JPCheckbox(labels: ['Option1','Option2','Option3','Option4',],
                disabled: ['Option1'],
                onChange: (bool isChecked, String label, int index) {  },
                orientation: JPOrientation.HORIZONTAL,
              ),
              JPCheckbox(labels: ["abc"],),
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
