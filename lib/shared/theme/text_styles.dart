import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
  TextStyle get h1;
  TextStyle get h2;
  TextStyle get h3;
  TextStyle get h4;
  TextStyle get h5;
  TextStyle get h6;
  TextStyle get h7;
  TextStyle get h8;
  TextStyle get h9;
  TextStyle get bodyExtraLargeBold;
  TextStyle get bodyExtraLargeMedium;
  TextStyle get bodyExtraLargeRegular;
  TextStyle get bodyExtraLargeLight;
  TextStyle get bodyLargeBold;
  TextStyle get bodyLargeMedium;
  TextStyle get bodyLargeRegular;
  TextStyle get bodyLargeLight;
  TextStyle get bodyMediumBold;
  TextStyle get bodyMediumMedium;
  TextStyle get bodyMediumRegular;
  TextStyle get bodyMediumLight;
  TextStyle get bodySmallBold;
  TextStyle get bodySmallMedium;
  TextStyle get bodySmallRegular;
  TextStyle get bodySmallLight;
  TextStyle get bodyExtraSmallBold;
  TextStyle get bodyExtraSmallMedium;
  TextStyle get bodyExtraSmallRegular;
  TextStyle get bodyExtraSmallLight;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get h1 =>
      GoogleFonts.ubuntu(fontSize: 80, fontWeight: FontWeight.w500);

  @override
  TextStyle get h2 =>
      GoogleFonts.ubuntu(fontSize: 56, fontWeight: FontWeight.w500);

  @override
  TextStyle get h3 =>
      GoogleFonts.ubuntu(fontSize: 44, fontWeight: FontWeight.w500);

  @override
  TextStyle get h4 =>
      GoogleFonts.ubuntu(fontSize: 36, fontWeight: FontWeight.w500);

  @override
  TextStyle get h5 =>
      GoogleFonts.ubuntu(fontSize: 32, fontWeight: FontWeight.w500);

  @override
  TextStyle get h6 =>
      GoogleFonts.ubuntu(fontSize: 28, fontWeight: FontWeight.w500);

  @override
  TextStyle get h7 =>
      GoogleFonts.ubuntu(fontSize: 24, fontWeight: FontWeight.w500);

  @override
  TextStyle get h8 =>
      GoogleFonts.ubuntu(fontSize: 20, fontWeight: FontWeight.w500);

  @override
  TextStyle get h9 =>
      GoogleFonts.ubuntu(fontSize: 16, fontWeight: FontWeight.w500);

  @override
  TextStyle get bodyExtraLargeBold =>
      GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w700);

  @override
  TextStyle get bodyExtraLargeLight =>
      GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w300);

  @override
  TextStyle get bodyExtraLargeMedium =>
      GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w500);

  @override
  TextStyle get bodyExtraLargeRegular =>
      GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w400);

  @override
  TextStyle get bodyExtraSmallBold =>
      GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w700);

  @override
  TextStyle get bodyExtraSmallLight =>
      GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w300);

  @override
  TextStyle get bodyExtraSmallMedium =>
      GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w500);

  @override
  TextStyle get bodyExtraSmallRegular =>
      GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w400);

  @override
  TextStyle get bodyLargeBold =>
      GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w700);

  @override
  TextStyle get bodyLargeLight =>
      GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w300);

  @override
  TextStyle get bodyLargeMedium =>
      GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500);

  @override
  TextStyle get bodyLargeRegular =>
      GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400);

  @override
  TextStyle get bodyMediumBold =>
      GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w700);

  @override
  TextStyle get bodyMediumLight =>
      GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w300);

  @override
  TextStyle get bodyMediumMedium =>
      GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500);

  @override
  TextStyle get bodyMediumRegular =>
      GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400);

  @override
  TextStyle get bodySmallBold =>
      GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w700);

  @override
  TextStyle get bodySmallLight =>
      GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w300);

  @override
  TextStyle get bodySmallMedium =>
      GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w500);

  @override
  TextStyle get bodySmallRegular =>
      GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400);
}
