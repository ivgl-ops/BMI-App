import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_prefs_example/const.dart';
import 'package:shared_prefs_example/widgets/gradient_slider.dart';

class HeightCard extends StatefulWidget {
  double height;
  HeightCard({Key? key, required this.height}) : super(key: key);

  @override
  State<HeightCard> createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
  LinearGradient gradient = const LinearGradient(colors: <Color>[
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.purple
  ]);
  double _value = 0;

  @override
  void initState() {
    _value = widget.height;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Column(
        children: [
          Center(
            child: HeadLine2("Height"),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              "cm",
              style: GoogleFonts.openSans(
                  color: const Color.fromARGB(255, 209, 208, 208)),
            ),
          ),
          Center(
            child: HeadLine40(_value.round().toString()),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: SliderTheme(
              data: SliderThemeData(
                trackShape: GradientRectSliderTrackShape(
                    gradient: gradient, darkenInactive: true),
              ),
              child: Slider(
                activeColor: Colors.white,
                inactiveColor: const Color.fromARGB(255, 236, 232, 232),
                min: 90,
                max: 250,
                value: _value,
                onChanged: (double value) {
                  setState(
                    () {
                      _value = value;
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
