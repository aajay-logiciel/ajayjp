import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPRadioButton/index.dart';
import 'package:jp_ui_kit/JPRadioButton/jp_radiobutton.dart';

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

              JPNRadioButton(value: 'a',
              groupValue: 'a',
              text: 'adfasdf',),
              JPNRadioButton(value: 'a',
                groupValue: 'b',
                text: 'adfasdf',),
              JPNRadioButton(value: '',
                groupValue: 'c',
                text: 'adfasdf',),


            ],
          ),
        ),
      ),
    );
  }
}
