import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jp/button.dart';
import 'package:jp/text.dart';
import 'package:jp/toggle.dart';
import 'package:jp_ui_kit/JPButton/jp_button_size.dart';
import 'package:jp_ui_kit/JPButton/jp_button.dart';
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
    return  const GetMaterialApp(
      home:  Button(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              JPText(text:"Full Buttons"),
              JPButton(
                iconData: Icons.eleven_mp,
              ),
              JPButton(

              ),
                SizedBox(
                height: 5,
              ),
              JPButton(
                onPressed: (){},
                text: "NORMAL BUTTON",
                buttonwidth: JPButtonSize.large,
                buttonheight: JPButtonSize.large,
              ),
              SizedBox(
                height: 5,
              ),
              JPButton(
                onPressed: (){},
                shape: JPShape.circular,
                text: "TERTIARY BUTTON",
                color: JPColor.tertiary,
                buttonwidth: JPButtonSize.large,
                buttonheight: JPButtonSize.large,
              ),
              SizedBox(
                height: 5,
              ),
              JPButton(
                onPressed: (){},
                shape: JPShape.circular,
                text: "GRAY BUTTON",
                color: JPColor.light_button,
                buttonwidth: JPButtonSize.large,
                buttonheight: JPButtonSize.large,
              ),
              SizedBox(
                height: 5,
              ),
              JPText(text:"Full Disable Buttons"),
              SizedBox(
                height: 5,
              ),
              JPButton(
                enabled: false,
                shape: JPShape.circular,
                text: "NORMAL BUTTON",
                buttonwidth: JPButtonSize.large,
                buttonheight: JPButtonSize.large,
              ),
              SizedBox(
                height: 5,
              ),
               JPButton(
                enabled: false,
                shape: JPShape.circular,
                text: "TERTIARY BUTTON",
                color: JPColor.tertiary,
                buttonwidth: JPButtonSize.large,
                buttonheight: JPButtonSize.large,
              ),
              SizedBox(
                height: 5,
              ),
               JPButton(
                enabled: false,
                shape: JPShape.circular,
                text: "GRAY BUTTON",
                color: JPColor.light_button,
                buttonwidth: JPButtonSize.large,
                buttonheight: JPButtonSize.large,
              ),
              SizedBox(
                height: 5,
              ),
              const JPText(text:"MEDIUM Buttons"),
              SizedBox(
                height: 5,
              ),
              JPButton(
                buttonwidth: JPButtonSize.medium ,
                buttonheight: JPButtonSize.medium,
                onPressed: (){},
                size: JPSize.medium,
                shape: JPShape.circular,
                text: "MEDIUM BUTTON",
              ),
              SizedBox(
                height: 5,
              ),
              const JPText(text:"Small Buttons"),
              SizedBox(
                height: 5,
              ),
              JPButton(
                buttonwidth: JPButtonSize.small,
                buttonheight: JPButtonSize.small,
                onPressed: (){},
                size: JPSize.small,
                shape: JPShape.circular,
                text: "SMALL",
              ),
              SizedBox(
                height: 5,
              ),
              const JPText(text: "Custom Width Buttons"),
              SizedBox(
                height: 5,
              ),
              JPButton(
                onPressed: (){},
                width: 200,
                shape: JPShape.circular,
                text: "SMALL",
              ),
              SizedBox(
                height: 5,
              ),
              Text("Outline Buttons"),
              SizedBox(
                height: 5,
              ),
              JPButton(
                buttonwidth: JPButtonSize.small,
                buttonheight: JPButtonSize.small,
                onPressed: (){},
                type: JPButtonType.outline,
                size: JPSize.small,
                shape: JPShape.circular,
                text: "SMALL",
              ),
              SizedBox(
                height: 5,
              ),
              Text("Icon Buttons with text"),
              SizedBox(
                height: 5,
              ),
              JPButton(
                onPressed: (){},
                buttonwidth: JPButtonSize.rectangle,
                buttonheight: JPButtonSize.rectangle,
                shape: JPShape.circular,
                text: "Loading",
                iconData:Icons.replay_circle_filled ,
                iconcolor: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text("Icon Buttons"),
              SizedBox(
                height: 5,
              ),

              JPButton(
                buttonwidth: JPButtonSize.square,
                buttonheight: JPButtonSize.square,
                shape: JPShape.standard,
                onPressed: (){},
                text: null,
                iconData:Icons.replay_circle_filled ,
                iconcolor: JPColor.white,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 5,
              ), SizedBox(
                height: 20,
              ),



              SizedBox(
                height: 20,
              ),
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


              JPCheckbox(labels: ['Option1','Option2','Option3','Option4',],
                disabled: ['Option1'],
                onChange: (bool isChecked, String label, int index) {  },
                orientation: JPOrientation.horizontal,
              ),
              JPCheckbox(labels: ["abc"],),
              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  JPToggle(
                    value: status,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                  SizedBox(width: 20,),
                  JPToggle(
                    disabled: true,
                    value: status1,
                    onToggle: (val) {
                      setState(() {
                        status1 = val;
                      });
                    },
                  ),
                  SizedBox(width: 20,),
                  JPToggle(
                    disabled: true,
                    value: status2,
                    onToggle: (val) {
                      setState(() {
                        status2 = val;
                      });
                    },
                  ),
                ],
              ),


              SizedBox(
                height: 20,
              ),


             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    JPChips(
                      iscancel: true,
                      isleading: true,
                      text: "Chip Name",
                    ),
                    SizedBox(
                     width: 20,
                    ),
                    JPChips(
                      iscancel: true,
                      text: "Chip Name",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    JPChips(
                      text: "Chip Name",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  JPBadges(
                    text: "2",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  JPBadges(
                    backgroundcolor: JPColor.tertiary,
                    text: "2",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  JPBadges(
                    backgroundcolor: JPColor.secondary,
                    text: "2",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  JPBadges(
                    backgroundcolor: JPColor.light_blue,
                    text: "2",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  JPBadges(
                    text: "12",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  JPBadges(
                    text: "123",
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

