import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPChips/jp_chips.dart';

class Chips extends StatelessWidget {
  const Chips({Key? key}) : super(key: key);

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


            ],
          ),
        ),
      ),
    );
  }
}
