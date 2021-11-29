import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPChips/index.dart';

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
                  children: const [
                    JPChips(
                      isCancel: true,
                      isLeading: true,
                      text: "Chip Name",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    JPChips(
                      isCancel: true,
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
