import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget HeadLine1(String text) {
  return Text(
    text,
    style: GoogleFonts.openSans(
        color: const Color(0xff515360),
        fontSize: 26,
        fontWeight: FontWeight.w700),
  );
}

Widget HeadLine40(String text) {
  return Text(
    text,
    style: GoogleFonts.openSans(
        color: const Color(0xff515360),
        fontSize: 50,
        fontWeight: FontWeight.w700),
  );
}

Widget HeadLine2(String text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: GoogleFonts.openSans(
        color: const Color(0xff515360),
        fontSize: 18,
        fontWeight: FontWeight.w700),
  );
}

Widget HeadLine30(String text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: GoogleFonts.openSans(
        color: const Color(0xff515360),
        fontSize: 30,
        fontWeight: FontWeight.w700),
  );
}

Widget HeadLineDigit(String text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: GoogleFonts.openSans(
        color: const Color(0xff515360),
        fontSize: 40,
        fontWeight: FontWeight.w700),
  );
}
