import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:map/app/modules/main_screen/views/widgets/custom_svg/custom_svg.dart';
import 'package:map/app/modules/user_create/controllers/country_controller.dart';
import 'package:map/app/modules/user_create/views/widget/countrys.dart';
import 'package:map/app/modules/user_create/views/widget/switch.dart';
import 'package:map/app/routes/app_pages.dart';
import 'package:map/common/custom_padding/padding.dart';
import 'package:map/common/custom_scaffold/scaffold.dart';
import 'package:map/common/widget/custom_botton/custom_elevated_button.dart';
import 'package:map/common/widget/custom_input_field_card/custom_input_field_card.dart';
import 'package:map/common/widget/custom_text_form_field/custom_textfield.dart';
import 'package:map/utils/pictures/icons/icons.dart';
import 'package:map/utils/pictures/images/images.dart';
import 'package:map/utils/styles/styles.dart';
import 'package:map/utils/text/text.dart';
import '../controllers/date_picker_controller.dart';
import '../controllers/user_create_controller.dart';

class UserCreateView extends GetView<UserCreateController> {
  const UserCreateView({super.key});

  @override
  Widget build(BuildContext context) {
    final dateController = Get.find<DatePickerController>();
    final countryController = Get.find<CountryController>();

    return Scaffold(
      body: CustomScaffold(
        imagePath: UImages.scaffoldImageSecond,
        child: SingleChildScrollView(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              SizedBox(height: 70.h),

              // Back button + title
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Image.asset(
                      UIcons.backButton,
                      height: 48.h,
                      width: 48.w,
                    ),
                  ),
                  SizedBox(width: 38.w),
                  Text(
                    UText.createUserTitle,
                    style: UTextStyles.title20_500w(color: Colors.black),
                  ),
                ],
              ),

              SizedBox(height: 20.h),

              // Profile + Email Card
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        UImages.userProfilePicture,
                        height: 62.h,
                        width: 62.w,
                      ),
                      onTap: () {},
                    ),

                    Spacer(),

                    Card(
                      elevation: 6,
                      child: Container(
                        padding: EdgeInsets.all(11.w),
                        width: 150.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  UText.createUserContainerTextOne,
                                  style: UTextStyles.title11_500w(
                                    color: Color(0xff273430),
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                CustomSvg(
                                  imagePath: UIcons.smApple,
                                  height: 14.h,
                                  width: 14.w,
                                ),
                              ],
                            ),
                            Text(
                              UText.createUserContainerEmail,
                              style: UTextStyles.title10_500w(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40.h),

              // Input Card
              Card(
                child: Padding(
                  padding: UPadding.screenPadding,
                  child: Column(
                    children: [
                      SizedBox(height: 25.h),

                      // Name field
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            barrierColor: Colors.black12,
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(40.r),
                              ),
                            ),
                            builder: (context) {
                              return SizedBox(
                                height: 500,width: double.infinity,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 40.h),
                                      Text(
                                        UText.userNameBottomSheetText,
                                        style: UTextStyles.title14_400w(
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 25.h),
                                      CustomTextFormField(
                                        fillColor: Colors.white,
                                        hintText:
                                            UText.userNameBottomSheetInputText,
                                        hintStyle: UTextStyles.title12_400w(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(height: 180.h),
                                      CustomElevatedButton(
                                        text: UText.userNameBottomSheetButtonText,
                                        textStyle: UTextStyles.title17_500w(
                                          color: Colors.white,
                                        ),
                                        onPressed: () {},
                                      ),
                                      SizedBox(height: 20.h),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              UText.createUserNameField,
                              style: UTextStyles.rTitle14_500w(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              UText.createUserNameText,
                              style: UTextStyles.title13_500w(
                                color: Color(0xff273430),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 6.h),
                      Divider(color: Color(0xC4C4C480)),

                      // Email Field
                      CustomInputFieldCard(
                        hintText: UText.createUserEmailField,
                        suffixText: UText.createUserEmailText,
                      ),

                      // Phone Field
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Text(
                            "Phone Number",
                            style: UTextStyles.rTitle14_500w(
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            child: IntlPhoneField(
                              keyboardType: TextInputType.number,
                              initialCountryCode: 'BD',
                              showCountryFlag: false,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Divider(color: Color(0xC4C4C480)),

                      // Date Picker
                      Obx(
                        () => GestureDetector(
                          onTap: () async {
                            DateTime? picked = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now(),
                            );
                            if (picked != null) {
                              dateController.selectedDate.value = picked;
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                dateController.selectedDate.value == null
                                    ? "Date of birth"
                                    : dateController.formatDate(
                                        dateController.selectedDate.value,
                                      ),
                                style: UTextStyles.rTitle14_500w(
                                  color: Colors.grey,
                                ),
                              ),
                              SvgPicture.asset(UIcons.downArrow, height: 15.h),
                            ],
                          ),
                        ),
                      ),

                      Divider(color: Color(0xC4C4C480)),

                      // Country
                      AllCountry(countryController: countryController),

                      Divider(color: Color(0xC4C4C480)),

                      // Lives In
                      CustomInputFieldCard(
                        hintText: UText.createUserLivesField,
                        suffixText: UText.createUserLivesText,
                      ),

                      // Switches
                      SizedBox(height: 10.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            UText.createUserPublicField,
                            style: UTextStyles.rTitle14_500w(
                              color: Colors.grey,
                            ),
                          ),
                          CustomSwitch(initialValue: true, onChanged: (v) {}),
                        ],
                      ),

                      Divider(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            UText.createUserConnectField,
                            style: UTextStyles.rTitle14_500w(
                              color: Colors.grey,
                            ),
                          ),
                          CustomSwitch(initialValue: false, onChanged: (v) {}),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10.h),

              // Save Button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.w),
                child: CustomElevatedButton(
                  text: UText.createUserButtonText,
                  textStyle: UTextStyles.title17_500w(color: Colors.white),
                  onPressed: () {Get.toNamed(Routes.ONBOARDING);},
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
