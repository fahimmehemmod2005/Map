import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UTextStyles{
  UTextStyles._();

  static TextStyle title25_600w({Color? color}) => GoogleFonts.poppins(fontSize: 26.sp, fontWeight: FontWeight.w600, color: color);
  static TextStyle title17_400w({Color? color}) => GoogleFonts.poppins(fontSize: 17.sp, fontWeight: FontWeight.w400, color: color);
  static TextStyle title12_400w({Color? color}) => GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w400, color: color);
  static TextStyle title14_500w({Color? color}) => GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w500, color: color);
  static TextStyle title17_500w({Color? color}) => GoogleFonts.poppins(fontSize: 17.sp, fontWeight: FontWeight.w500, color: color);

}

  extension TextStyleExtension on TextStyle {
    TextStyle withColor(Color color) => copyWith(color: color);
}
