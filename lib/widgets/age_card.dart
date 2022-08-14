import 'package:flutter/material.dart';
import 'package:shared_prefs_example/widgets/math_button.dart';

import '../const.dart';

class UserCard extends StatefulWidget {
  String title;
  int counter;
  UserCard({Key? key, required this.title, required this.counter})
      : super(key: key);

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  int counter = 0;
  late String title;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    title = widget.title;
    counter = widget.counter;
  }

  void incrementCounter() {
    setState(() {
      counter++;
      if (counter >= 200) {
        counter = 200;
      }
    });
  }

  void subtractionCounter() {
    setState(() {
      counter--;
      if (counter <= 0) {
        counter = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 200,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(child: HeadLine2(title.toString())),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: counter < 200 && counter > 0
                ? HeadLineDigit(counter.toString())
                : HeadLine1("text"),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: incrementCounter,
                child: MathButton(
                  text: "+",
                ),
              ),
              GestureDetector(
                onTap: subtractionCounter,
                child: MathButton(
                  text: "-",
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
