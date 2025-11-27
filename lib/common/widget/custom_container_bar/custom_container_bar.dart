import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerBar extends StatelessWidget {
  final Widget? child;

  final double? width;
  final BorderRadius? borderRadius;
  final Color? color;

  const CustomContainerBar({
    super.key,
    this.child,
    this.width,
    this.borderRadius,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          color: color ?? Colors.white70,
          borderRadius: borderRadius ??
              BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
        ),
        child: child,
      ),
    );
  }
}
