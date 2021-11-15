import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPToggle/jp_toggle.dart';

class Toggle extends StatefulWidget {
  const Toggle({Key? key}) : super(key: key);

  @override
  _ToggleState createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool status = false;
  bool status1 = false;
  bool status2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children:  [


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

                  Switch(value: status, onChanged: (value){
                    status=!status;
                  })
                ],
              ),




            ],
          ),
        ),
      ),
    );
  }
}
