import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPRadioButton/jp_radiobutton.dart';

class RadiobuttonClass extends StatefulWidget {
  const RadiobuttonClass({Key? key}) : super(key: key);

  @override
  _RadiobuttonClassState createState() => _RadiobuttonClassState();
}

class _RadiobuttonClassState extends State<RadiobuttonClass> {
  bool status = false;
  bool status1 = false;
  bool status2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children:  [

              SizedBox(
                height: 5,
              ),
              JPRadioButton(
                disabled: [
                  "Option 1"
                ],
                labels: <String>[
                  "Option 1",
                  "Option 2",
                  "Option 3",
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
