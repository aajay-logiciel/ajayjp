import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPBadges/jpbadges.dart';
import 'package:jp_ui_kit/JPCommonFiles/jp_colors.dart';

class Badges extends StatelessWidget {
  const Badges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Badges"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children:  [


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
