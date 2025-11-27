import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:map/utils/styles/styles.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  const CustomPinCodeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      animationType: AnimationType.scale,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      appContext: context,
      length: 4,
      keyboardType: TextInputType.number,
      enabled: true,
      cursorColor: Colors.black,
      enableActiveFill: true,
      cursorHeight: 0.0,
      hintCharacter: '-',
      hintStyle: UTextStyles.title20_500w(color: Color(0xff000000)),
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.circle,
        fieldHeight: 56.h,
        fieldWidth: 56.w,
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        activeColor: Colors.white,
        inactiveColor: Colors.white,
        selectedFillColor: Colors.white,
        selectedColor: Colors.white,
        errorBorderColor: Colors.redAccent,
      ),
    );
  }
}
