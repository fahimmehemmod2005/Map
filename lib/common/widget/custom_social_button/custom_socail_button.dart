import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSocialButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const CustomSocialButton({
    super.key,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SvgPicture.asset(
        imagePath,
        height: 45.h,
        width: 45.h,
      ),
    );
  }
}
