import 'package:flutter/material.dart';
import 'package:jp_ui_kit/Badge/index.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';

class BadgesClass extends StatelessWidget {
  const BadgesClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Badge"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: const [
                  Badges(
                    text: "2",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Badges(
                    backgroundColor: JPColor.tertiary,
                    text: "2",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Badges(
                    backgroundColor: JPColor.secondary,
                    text: "2",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Badges(
                    backgroundColor: JPColor.lightGray,
                    text: "2",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Badges(
                    text: "12",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Badges(
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
