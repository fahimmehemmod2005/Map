import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:map/utils/styles/styles.dart';
import 'package:map/utils/text/text.dart';

import '../../../../../utils/pictures/icons/icons.dart';
import '../../controllers/country_controller.dart';

class AllCountry extends StatelessWidget {
  const AllCountry({
    super.key,
    required this.countryController,
  });

  final CountryController countryController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCountryPicker(
          context: context,
          showPhoneCode: false,
          onSelect: (country) {
            countryController.setCountry(country.name);
            countryController.setFlag(country.flagEmoji); // save flag emoji
          },
        );
      },
      child: SizedBox(
        height: 35.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() => Row(
              children: [
                if (countryController.selectedFlag.isNotEmpty)
                  Text(
                    countryController.selectedFlag.value,
                    style: TextStyle(fontSize: 20),
                  ),
                SizedBox(width: 8.w),
                Text(
                  countryController.selectedCountry.isEmpty
                      ? UText.createUserCountryField
                      : countryController.selectedCountry.value,
                  style: UTextStyles.rTitle14_500w(color: Colors.grey)
                ),
              ],
            )),
            SvgPicture.asset(
              UIcons.downArrow,
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
