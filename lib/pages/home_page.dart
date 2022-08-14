import 'package:flutter/material.dart';
import 'package:shared_prefs_example/const.dart';
import 'package:shared_prefs_example/widgets/age_card.dart';
import 'package:shared_prefs_example/widgets/select_gender.dart';

import 'package:shared_prefs_example/widgets/user_height_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

enum SingingCharacter { lafayette, jefferson }

class _HomePageState extends State<HomePage> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    int counter = 20;
    double height = 140;

    return Scaffold(
        backgroundColor: Color(0xffF6F7FB),
        appBar: AppBar(
          title: HeadLine1("BMI CALCULATOR"),
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    UserCard(
                      title: 'Age',
                      counter: counter,
                    ),
                    UserCard(
                      title: 'Weight',
                      counter: counter,
                    ),
                  ],
                ),
              ),
              HeightCard(
                height: height,
              ),
              SelectGender(),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                  onPressed: () {
                    print(counter);
                  },
                  child: Text("GO"))
            ],
          ),
        ));
  }
}
