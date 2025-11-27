import 'package:flutter/material.dart';


class divider extends StatelessWidget {
  final Widget? child;
  final Color? lineColor;
  final double? thickness;
  final double? spacing;

  const divider({
    Key? key,
    this.child,
    this.lineColor,
    this.thickness,
    this.spacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: lineColor,
            thickness: thickness,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: spacing!),
          child: child,
        ),
        Expanded(
          child: Divider(
            color: lineColor ?? Colors.grey[300],
            thickness: thickness,
          ),
        ),
      ],
    );
  }
}