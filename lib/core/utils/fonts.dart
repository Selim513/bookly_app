import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle getTitleStyle({
  FontWeight fontweight = FontWeight.w600,
  double fontsize = 20,
}) {
  return GoogleFonts.poppins(
    fontWeight: fontweight,
    fontSize: fontsize,
  );
}

TextStyle getGreyTextStyle({
  FontWeight fontweight = FontWeight.w600,
  double fontsize = 15,
  Color color = Colors.grey,
}) {
  return GoogleFonts.poppins(
    fontWeight: fontweight,
    fontSize: fontsize,
    color: color,
  );
}

TextStyle getPriceTextStyle(
    {FontWeight fontweight = FontWeight.bold,
    double fontsize = 20,
    color = Colors.white}) {
  return GoogleFonts.poppins(
      fontWeight: fontweight, fontSize: fontsize, color: color);
}
