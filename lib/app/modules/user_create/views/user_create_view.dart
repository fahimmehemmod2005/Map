import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:map/app/modules/main_screen/views/widgets/custom_svg/custom_svg.dart';
import 'package:map/app/modules/user_create/controllers/country_controller.dart';
import 'package:map/app/modules/user_create/views/widget/countrys.dart';
import 'package:map/app/modules/user_create/views/widget/switch.dart';
import 'package:map/common/custom_padding/padding.dart';
import 'package:map/common/custom_scaffold/scaffold.dart';
import 'package:map/common/widget/custom_botton/custom_elevated_button.dart';
import 'package:map/common/widget/custom_input_field_card/custom_input_field_card.dart';
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

              //_____________ backButton and title_____________
              Row(
                children: [
                  //___________________back button__________________
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () => Get.back(),
                      child: Image.asset(
                        UIcons.backButton,
                        height: 48,
                        width: 48,
                      ),
                    ),
                  ),

                  SizedBox(width: 38.w),

                  //__________________ Title _________________
                  Text(
                    UText.createUserTitle,
                    style: UTextStyles.title20_500w(color: Color(0xff000000)),
                  ),
                ],
              ),

              SizedBox(height: 20.h),

              //____________ Profile picture and Email card ____________________
              Padding(
                padding: EdgeInsets.only(left: 48.0, right: 37.0),
                child: Row(
                  children: [
                    //________________ Profile picture _______________
                    GestureDetector(
                      child: Image.asset(
                        UImages.userProfilePicture,
                        height: 62.h,
                        width: 62.w,
                      ),
                      onTap: () {},
                    ),

                    Spacer(),

                    //______________ Email Card __________________
                    Card(
                      elevation: 6,
                      semanticContainer: true,
                      child: SizedBox(
                        height: 68.h,
                        width: 146.w,
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
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
                                    height: 13.85.h,
                                    width: 13.85.w,
                                  ),
                                ],
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                UText.createUserContainerEmail,
                                style: UTextStyles.title10_500w(
                                  color: Color(0xff949494),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 50.h),

              //___________________ Input Field Card_________________
              Card(
                semanticContainer: true,
                child: SizedBox(
                  height: 450.h,
                  width: double.infinity,
                  child: Padding(
                    padding: UPadding.screenPadding,
                    child: Column(
                      children: [
                        SizedBox(height: 25.h),

                        //____________________ name _______________________

                        GestureDetector(
                            onTap: (){

                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(UText.createUserNameField,style: UTextStyles.rTitle14_500w(color: Colors.grey),),
                                Text(UText.createUserNameText,style: UTextStyles.title13_500w(color: Color(0xff273430)),),
                              ],
                            ),
                          ),

                        SizedBox(height: 6.h),
                        Divider(color: Color(0xC4C4C480)),

                        //_____________________ email ______________________

                        CustomInputFieldCard(
                          hintText: UText.createUserEmailField,
                          suffixText: UText.createUserEmailText,
                        ),

                        //___________________________phone number__________________________

                        SizedBox(
                          height: 40.h,
                          child: Row(
                            children: [
                              Text(
                                "Phone number",
                                style: UTextStyles.rTitle14_500w(
                                  color: Colors.grey,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 15, left: 20),
                                  child: IntlPhoneField(
                                    keyboardType: TextInputType.number,
                                    initialCountryCode: 'BR',
                                    showCountryFlag: false,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      isDense: false,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 6.h),

                        Divider(color: Color(0xC4C4C480)),

                        //______________________date picker ___________________________

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
                            child: Container(
                              height: 40,
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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

                                  SvgPicture.asset(
                                    UIcons.downArrow,
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 6),

                        Divider(color: Color(0xC4C4C480)),

                        //________________ Country picker_____________________

                        AllCountry(countryController: countryController),

                        Divider(color: Color(0xC4C4C480)),

                        //________________________ lives in ______________________

                        CustomInputFieldCard(
                          hintText: UText.createUserLivesField,
                          suffixText: UText.createUserLivesText,
                        ),

                        //_____________________ public profile --_______________

                        SizedBox(
                          height: 40.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(UText.createUserPublicField,style: UTextStyles.rTitle14_500w(
                            color: Colors.grey,
                          ),),
                              CustomSwitch(
                                  initialValue: true, onChanged: (val) {},
                              ),
                            ],
                          ),
                        ),

                        Divider(color: Color(0xC4C4C480)),

                        //_____________________ connect your contacts _________________________

                        SizedBox(
                          height: 40.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(UText.createUserConnectField,style: UTextStyles.rTitle14_500w(
                                color: Colors.grey,
                              ),),
                              CustomSwitch(
                                initialValue: false, onChanged: (val) {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30.h),

              //________________ Button __________________
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0),
                child: CustomElevatedButton(
                  text: UText.createUserButtonText,
                  textStyle: UTextStyles.title17_500w(color: Color(0xffFFFFFF)),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*void _showCustomGenderPicker() {
  // 0 = Male, 1 = Female, 2 = Prefer not to say
  int selectedIndex = 0; // default = Male (change if needed)

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => StatefulBuilder(
      builder: (context, setModalState) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.58,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 12.h),

              // Drag handle
              Container(
                width: 40.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),

              SizedBox(height: 20.h),

              // Title
              Text(
                'Select Gender',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: 40.h),

              // Gender Wheel with 3 options
              Expanded(
                child: ListWheelScrollView.useDelegate(
                  itemExtent: 70,
                  perspective: 0.005,
                  diameterRatio: 1.8,
                  physics: const FixedExtentScrollPhysics(),
                  controller: FixedExtentScrollController(initialItem: selectedIndex),
                  onSelectedItemChanged: (index) {
                    if (index < 3) {
                      setModalState(() {
                        selectedIndex = index;
                      });
                    }
                  },
                  childDelegate: ListWheelChildBuilderDelegate(
                    builder: (context, index) {
                      final List<String> genders = ['Male', 'Female', 'Prefer not to say'];
                      if (index >= genders.length) return null;

                      final bool isSelected = index == selectedIndex;

                      return Center(
                        child: Text(
                          genders[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: isSelected ? 25.sp : 18.sp,
                            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                            color: isSelected ? AppColor.primarryColor : Colors.grey,
                            height: 1.2,
                          ),
                        ),
                      );
                    },
                    childCount: 3,
                  ),
                ),
              ),

              SizedBox(height: 40.h),

              // Cancel & OK Buttons (same as before)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          elevation: 0,
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
                        ),
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: AppColor.primarryColor, fontSize: 16.sp, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          final List<String> genders = ['Male', 'Female', 'Prefer not to say'];
                          final String selectedGender = genders[selectedIndex];

                          setState(() {
                            gender = selectedGender; // Update your gender variable
                          });

                          Navigator.pop(context);

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Gender set to $selectedGender'),
                              backgroundColor: AppColor.primarryColor,
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.primarryColor,
                          elevation: 0,
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
                        ),
                        child: Text(
                          'OK',
                          style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30.h),
            ],
          ),
        );
      },
    ),
  );
}*/
