import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPButton/jpbutton.dart';
import 'package:jp_ui_kit/JPCheckBox/jpcheckbox.dart';
import 'package:jp_ui_kit/JPText/text_type.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  MyHomePage(),
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
              SizedBox(
                height: 5,
              ),
              JPButton(
                onPressed: (){},
                fullWidthButton: true,
                text: "NORMAL BUTTON",
              ),
              SizedBox(
                height: 5,
              ),
              JPButton(
                onPressed: (){},
                shape: BShape.circular,
                fullWidthButton: true,
                text: "TERTIARY BUTTON",
                color: JPColor.TERTIARY,
              ),
              SizedBox(
                height: 5,
              ),
              JPButton(
                onPressed: (){},
                shape: BShape.circular,
                fullWidthButton: true,
                text: "GRAY BUTTON",
                color: JPColor.LIGHTBUTTON,
              ),
              SizedBox(
                height: 5,
              ),
              JPText(text:"Full Disable Buttons"),
              SizedBox(
                height: 5,
              ),
              JPButton(
                onPressed: null,
                shape: BShape.circular,
                fullWidthButton: true,
                text: "NORMAL BUTTON",
              ),
              SizedBox(
                height: 5,
              ),
              const JPButton(
                onPressed: null,
                shape: BShape.circular,
                fullWidthButton: true,
                text: "TERTIARY BUTTON",
                color: JPColor.TERTIARY,
              ),
              SizedBox(
                height: 5,
              ),
              const JPButton(
                onPressed: null,
                shape: BShape.circular,
                fullWidthButton: true,
                text: "GRAY BUTTON",
                color: JPColor.LIGHTBUTTON,
              ),
              SizedBox(
                height: 5,
              ),
              const JPText(text:"MEDIUM Buttons"),
              SizedBox(
                height: 5,
              ),
              JPButton(
                onPressed: (){},
                size: JPSize.MEDIUM,
                shape: BShape.circular,
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
                onPressed: (){},
                size: JPSize.SMALL,
                shape: BShape.circular,
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
                shape: BShape.circular,
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
                onPressed: (){},
                type: ButtonType.outline,
                size: JPSize.SMALL,
                shape: BShape.circular,
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
                shape: BShape.circular,
                text: "Loading",
                icon: Icon(Icons.replay_circle_filled,color: Colors.white,),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Icon Buttons"),
              SizedBox(
                height: 5,
              ),
              JPIconButton(
                onPressed: (){},
                //size: JPSize.SMALL,
                icon: Icon(Icons.replay_circle_filled,color: Colors.white,),
              ),
              SizedBox(
                height: 5,
              ),
               JPText(
                  text: "Ajay Rathi",
              ),
              SizedBox(
                height: 5,
              ),
              JPText(
                text: "Ajay",
                textSize: TextSize.Heading_1,
                font: Font.Montserrat,
              ), SizedBox(
                height: 5,
              ),
              JPText(
                text: "Ajay jhsdga;s askdgja;lksdgjad skadgjalsdg;asd sgdljasdlgfjoregad sdkfjalsdgjpogdadskgjdsg sdakgjlasdgrdklg sldkfjalsdg lsdfjsldgosdglk sldgjLSDGJO",
              ),
              SizedBox(
                height: 5,
              ),
          RadioButtonGroup(
            disabled: [
              "Option 1"
            ],
              labels: <String>[
                "Option 1",
                "Option 2",
                "Option 3",
              ],
          ),

              JPToggle(
               // width: 125.0,
               // height: 55.0,
              //  valueFontSize: 25.0,
               // toggleSize: 45.0,
                value: status,
               // borderRadius: 30.0,
              //  padding: 8.0,
              //  disabled: true,
              //  showOnOff: true,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),

              JPCheckbox(labels: ['Option1','Option2','Option3','Option4','Option5','Option6','Option7'],
                disabled: ['Option1'],
                onChange: (bool isChecked, String label, int index) {  },
                orientation: JPOrientation.HORIZONTAL,
              ),
              JPBadges(
                backgroundcolor: Colors.pink,
                text: "12345",
              ),
              JPBadges(
                text: "1",
              ),
              JPBadges(
                backgroundcolor: Colors.greenAccent,
                text: "2",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

