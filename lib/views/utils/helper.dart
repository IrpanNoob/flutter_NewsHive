import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//color
const Color primaryColor = Color(0xff151515);
const Color cTextBlue = Color(0xff4556c0);
const Color cLinear = Color(0xff2d336b);
const Color cWhite = Color(0xffffffff);
const Color cBlack = Color(0xff151515);
const Color cGrey = Color(0xffb7b7b7);
const Color cRed = Color(0xfff44336);
const Color cGreen = Color(0xff4caf50);
const Color cYellow = Color(0xffffc107);
const Color cOrange = Color(0xffff9800);
const Color cBlue = Color(0xff2196f3);

const Widget hsSuperTiny = SizedBox(
  width: 2,
);
const Widget hsTiny = SizedBox(
  width: 4,
);
const Widget hsSmall = SizedBox(
  width: 8,
);

const Widget hsMedium = SizedBox(
  width: 12,
);
const Widget hsLarge = SizedBox(
  width: 16,
);
const Widget hsSuperLarge = SizedBox(
  width: 20,
);
const Widget hsHuge = SizedBox(
  width: 24,
);
const Widget hsSuperHuge = SizedBox(
  width: 28,
);
const Widget hsGiant = SizedBox(
  width: 32,
);
const Widget hsSuperGiant = SizedBox(
  width: 36,
);


//height
const Widget vsSuperTiny = SizedBox(
  height: 2,
);
const Widget vsTiny = SizedBox(
  height: 4,
);
const Widget vsSmall = SizedBox(
  height: 8,
);
const Widget vsMedium = SizedBox(
  height: 12,
);
const Widget vsLarge = SizedBox(
  height: 16,
);
const Widget vsSuperLarge = SizedBox(
  height: 20,
);
const Widget vsHuge = SizedBox(
  height: 24,
);
const Widget vsSuperHuge = SizedBox(
  height: 28,
);
const Widget vsGiant = SizedBox(
  height: 32,
);
const Widget vsSuperGiant = SizedBox(
  height: 36,
);

//* Divider
Widget spacedDivider = Column(
  children: <Widget>[
    vsTiny,
    vsTiny,
    Divider(color: cLinear, height: 4.0),
    vsTiny,
    vsTiny,
  ],
);

//* Screen
Widget verticalSpace(double height) => SizedBox(height: height);
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

//* Font Weight
FontWeight thin = FontWeight.w100;
FontWeight extralight = FontWeight.w200;
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extrabold = FontWeight.w800;

//* TextStyle
TextStyle headline1 = GoogleFonts.poppins(fontSize: 40);
TextStyle headline2 = GoogleFonts.poppins(fontSize: 34);
TextStyle headline3 = GoogleFonts.poppins(fontSize: 24);
TextStyle headline4 = GoogleFonts.poppins(fontSize: 20);
TextStyle subtitle1 = GoogleFonts.poppins(fontSize: 16);
TextStyle subtitle2 = GoogleFonts.poppins(fontSize: 14);
TextStyle caption = GoogleFonts.poppins(fontSize: 12);
TextStyle overline = GoogleFonts.poppins(fontSize: 10);

//* Border
OutlineInputBorder enableBorder = OutlineInputBorder(
  borderSide: BorderSide(color: cBlack),
  borderRadius: BorderRadius.circular(5),
);

OutlineInputBorder focusedBorder = OutlineInputBorder(
  borderSide: BorderSide(color: primaryColor),
  borderRadius: BorderRadius.circular(5),
);

OutlineInputBorder errorBorder = OutlineInputBorder(
  borderSide: BorderSide(color: cRed),
  borderRadius: BorderRadius.circular(5),
);
OutlineInputBorder focusedErrorBorder = OutlineInputBorder(
  borderSide: BorderSide(color: cRed),
  borderRadius: BorderRadius.circular(5),
);

//* Box Decorations
BoxDecoration fieldDecortaion = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color: Colors.grey[200],
);

BoxDecoration disabledFieldDecortaion = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color: Colors.grey[100],
);

//* Field Variables
const double fieldHeight = 55;
const double smallFieldHeight = 40;
const double inputFieldBottomMargin = 30;
const double inputFieldSmallBottomMargin = 0;
const EdgeInsets fieldPadding = EdgeInsets.symmetric(horizontal: 15);
const EdgeInsets largeFieldPadding = EdgeInsets.symmetric(
  horizontal: 15,
  vertical: 15,
);




