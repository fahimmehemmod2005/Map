import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:map/utils/styles/styles.dart';
import '../../../utils/text/text.dart';
import '../../custom_padding/padding.dart';

class CustomInputFieldCard extends StatelessWidget {
  final String hintText;
  final String suffixText;
  const CustomInputFieldCard({
    super.key,
    required this.hintText,
    required this.suffixText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 38,width: double.infinity,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: UTextStyles.rTitle14_500w(color: Colors.grey),
              suffixIcon: Padding(
                padding: EdgeInsets.only(right: 8.0, top: 14.0),
                child: Text(
                  suffixText,
                  style: UTextStyles.title13_500w(color: Color(0xff273430)),
                ),
              ),
              border: InputBorder.none
            ),
          ),
        ),
        SizedBox(height: 10,),
        Divider(color: Color(0xC4C4C480),)
      ],
    );
  }
}
