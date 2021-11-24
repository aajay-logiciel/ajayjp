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
            children:  const [

              SizedBox(
                height: 5,
              ),

              JPRadioButton(
                labels: ['abcdef','abcdef','abcdef'],
              )


            ],
          ),
        ),
      ),
    );
  }
}
