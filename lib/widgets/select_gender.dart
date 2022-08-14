import 'package:flutter/material.dart';

import 'package:shared_prefs_example/const.dart';

class SelectGender extends StatefulWidget {
  SelectGender({Key? key}) : super(key: key);

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 20),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HeadLine30("Man"),
          SizedBox(
            child: Transform.scale(
              scale: 1.6,
              child: Switch(
                activeColor: Colors.pinkAccent,
                inactiveTrackColor: Colors.blue[200],
                inactiveThumbColor: Colors.blue,
                value: status,
                onChanged: (value) {
                  print("VALUE : $value");
                  setState(() {
                    status = value;
                  });
                },
              ),
            ),
          ),
          HeadLine30("Woman")
        ],
      ),
    );
  }
}
