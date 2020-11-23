import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle kSmallText = GoogleFonts.montserrat(
    color: Colors.white,
    letterSpacing: 4,
    fontSize: 12,
    fontWeight: FontWeight.w200);
TextStyle kMediumText = GoogleFonts.montserrat(
    color: Colors.white,
    letterSpacing: 4,
    fontSize: 25,
    fontWeight: FontWeight.w200);
TextStyle kLargeText = GoogleFonts.montserrat(
    color: Colors.white,
    letterSpacing: 3,
    fontSize: 50,
    fontWeight: FontWeight.w200);

const kDefaultPadding = 16.0;

const Color kInactiveTileColor = Color(0xff0f3460);

const BoxShadow kDefaultShadow =
    BoxShadow(blurRadius: 2, offset: Offset(-2, 2));

const BoxDecoration kBackGroundGradient = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [const Color(0xff1a1a2e), const Color(0xff16213e)],
    tileMode: TileMode.clamp,
  ),
);
