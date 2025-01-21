import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextStyle baseTextStyle = GoogleFonts.poppins();

final TextStyle primaryTextStyle = baseTextStyle.copyWith(
  fontWeight: FontWeight.w600,
  fontSize: 20.0,
  color: Colors.black,
);

final TextStyle secondaryTextStyle = baseTextStyle.copyWith(
  fontWeight: FontWeight.w500,
  fontSize: 18.0,
  color: const Color.fromRGBO(0, 0, 0, 1),
);

TextStyle get headingTextStyle => TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 22.0,
  fontFamily: GoogleFonts.poppins().fontFamily,
  color: Colors.black,
);

TextStyle get lightHeadingTextStyle => TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 14.0,
  fontFamily: GoogleFonts.poppins().fontFamily,
  color: Colors.black,
);

final TextStyle hintTextStyle = baseTextStyle.copyWith(
  fontWeight: FontWeight.w400,
  fontSize: 16.0,
  color: const Color.fromRGBO(100, 100, 100, 1),
);

final TextStyle lightHintTextStyle = baseTextStyle.copyWith(
  fontWeight: FontWeight.w700,
  fontSize: 14.0,
  color: const Color.fromRGBO(100, 100, 100, 1),
);
