import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPButton/jpbutton.dart';
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
              Text("Full Buttons"),
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
                color: Color_.TERTIARY,
              ),
              SizedBox(
                height: 5,
              ),
              JPButton(
                onPressed: (){},
                shape: BShape.circular,
                fullWidthButton: true,
                text: "GRAY BUTTON",
                color: Color_.LIGHTBUTTON,
              ),
              SizedBox(
                height: 5,
              ),
              Text("Full Disable Buttons"),
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
                color: Color_.TERTIARY,
              ),
              SizedBox(
                height: 5,
              ),
              const JPButton(
                onPressed: null,
                shape: BShape.circular,
                fullWidthButton: true,
                text: "GRAY BUTTON",
                color: Color_.LIGHTBUTTON,
              ),
              SizedBox(
                height: 5,
              ),
              const Text("MEDIUM Buttons"),
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
              const Text("Small Buttons"),
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
              const Text("Custom Width Buttons"),
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
                  text: "Ajay",
              )

            ],
          ),
        ),
      ),
    );
  }
}

