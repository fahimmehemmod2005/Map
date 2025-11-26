import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final double borderRadius;
  final TextStyle? textStyle;
  final Widget? icon;
  final List<Color>? gradientColors;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.height = 47.0,
    this.width = double.infinity,
    this.borderRadius = 60.0,
    this.textStyle,
    this.icon,
    this.gradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors ?? [Color(0xff6DC3F2), Color(0xff0289F2)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(borderRadius.r),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(text, style: textStyle),
                if (icon != null) ...[SizedBox(width: 10.w), icon!],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
