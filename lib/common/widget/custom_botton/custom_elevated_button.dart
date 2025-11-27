import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPressed;
  final double height;
  final double borderRadius;
  final TextStyle? textStyle;
  final Widget? icon;
  final List<Color>? gradientColors;

  const CustomElevatedButton({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.onPressed,
    this.height = 47.0,
    this.borderRadius = 60.0,
    this.textStyle,
    this.icon,
    this.gradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors ?? [Color(0xff6DC3F2), Color(0xff0289F2)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(borderRadius.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: textStyle),
            SizedBox(width: 10.w),
            SvgPicture.asset(imagePath, height: 24.h, width: 24.h,
            ),
          ],
        ),
      ),
    );
  }
}
