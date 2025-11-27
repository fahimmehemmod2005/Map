import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;
  final String imagePath;

  const CustomScaffold({
    super.key,
    required this.imagePath,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity.h,
      width: double.infinity.w,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imagePath),
          fit: BoxFit.cover
        ),
      ),
      child: child,
    );
  }
}
