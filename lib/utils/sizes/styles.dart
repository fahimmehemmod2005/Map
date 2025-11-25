import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UTextStyles{
  UTextStyles._();

  static TextStyle title26_600({Color? color}) => GoogleFonts.inter(fontSize: 26.sp, fontWeight: FontWeight.w600, color: color,);
}

  extension TextStyleExtension on TextStyle {
    TextStyle withColor(Color color) => copyWith(color: color);
}
