import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:map/app/modules/main_screen/views/widgets/custom_svg/custom_svg.dart';
import 'package:map/common/custom_padding/padding.dart';
import 'package:map/common/custom_scaffold/scaffold.dart';
import 'package:map/common/widget/custom_botton/custom_elevated_button.dart';
import 'package:map/common/widget/custom_input_field_card/custom_input_field_card.dart';
import 'package:map/utils/pictures/icons/icons.dart';
import 'package:map/utils/pictures/images/images.dart';
import 'package:map/utils/styles/styles.dart';
import 'package:map/utils/text/text.dart';

import '../controllers/user_create_controller.dart';

class UserCreateView extends GetView<UserCreateController> {
  const UserCreateView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffold(imagePath: UImages.scaffoldImageSecond, child:SingleChildScrollView(
        padding: UPadding.screenPadding,
        child: Column(
          children: [

            SizedBox(height: 70.h),

            //_____________ backButton and title_____________

            Row(
              children: [

                //___________________back button__________________

                Align(
                  alignment: Alignment.topLeft, child: GestureDetector(
                    onTap: () => Get.back(), child: Image.asset(
                        UIcons.backButton, height: 48, width: 48),),),

                SizedBox(width: 38.w),

                //__________________ Title _________________

                Text(UText.createUserTitle,style: UTextStyles.title20_500w(color: Color(0xff000000)),)
              ],
            ),

            SizedBox(height: 20.h,),

            //____________ Profile picture and Email card ____________________

            Padding(
              padding: EdgeInsets.only(left: 48.0,right: 37.0),
              child: Row(children: [

                //________________ Profile picture _______________

                GestureDetector(child: Image.asset(UImages.userProfilePicture,
                  height: 62.h,width: 62.w,),onTap: (){},),

                Spacer(),

                //______________ Email Card __________________

                Card(
                  elevation: 6,
                  semanticContainer: true,
                  child: Container(
                    height: 68.h,
                    width: 146.w,
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(UText.createUserContainerTextOne,style: UTextStyles.title11_500w(color: Color(0xff273430)),),
                              SizedBox(width: 8.w),
                              CustomSvg(imagePath: UIcons.smApple,height: 13.85.h,width: 13.85.w,)
                            ],
                          ),
                          SizedBox(height: 5.h,),
                          Text(UText.createUserContainerEmail,style: UTextStyles.title10_500w(color: Color(0xff949494)),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],),
            ),

            SizedBox(height: 50.h),

            //___________________ Input Field Card_________________

            Card(
              semanticContainer: true,
              child: Container(
                height: 425.h, width: double.infinity,
                child: Padding(padding: UPadding.screenPadding,
                  child: Column(
                    children: [
                      CustomInputFieldCard(hintText: UText.createUserNameField,suffixText: UText.createUserNameText),
                      CustomInputFieldCard(hintText: UText.createUserEmailField,suffixText: UText.createUserEmailText),

                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 50.h),

            //________________ Button __________________


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: CustomElevatedButton(text: UText.createUserButtonText,textStyle: UTextStyles.title17_500w(color: Color(0xffFFFFFF)) ,onPressed: (){}),
            )
          ],
        ),
      )),
    );
  }
}
