import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:map/app/routes/app_pages.dart';
import 'package:map/common/custom_padding/padding.dart';
import 'package:map/common/custom_scaffold/scaffold.dart';
import 'package:map/common/widget/custom_botton/custom_elevated_button.dart';
import 'package:map/common/widget/custom_text_form_field/custom_textfield.dart';
import 'package:map/utils/pictures/icons/icons.dart';
import 'package:map/utils/pictures/images/images.dart';
import 'package:map/utils/styles/styles.dart';
import 'package:map/utils/text/text.dart';

import '../controllers/forgot_controller.dart';

class ForgotView extends GetView<ForgotController> {
  const ForgotView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: CustomScaffold(
       imagePath: UImages.scaffoldImageSecond,
       child: SingleChildScrollView(
         padding: UPadding.screenPadding,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [

             SizedBox(height: 72.h),

             //___________back Button_______________

             Align(
               alignment: Alignment.topLeft,
               child: GestureDetector(
                 onTap: () => Get.back(),
                 child: Image.asset(
                     UIcons.backButton,
                   height: 48,
                   width: 48
                 ),
               ),
             ),

             SizedBox(height: 10.h),

             //_________________Title________________

             Text(
                 UText.forgotTitle,
             style: UTextStyles.title22_600w(color: Color(0xff000000)),
             ),

             SizedBox(height: 20.h),

             //_________________subTitle___________________
             
             Text(
               textAlign: TextAlign.center,
                 UText.forgotSubTitle,
             style: UTextStyles.title14_400w(color: Color(0xff333333)),
             ),

             SizedBox(height: 35.h),

             //__________________Email field_________________

             Padding(
               padding:  EdgeInsets.symmetric(horizontal: 30.0),
               child: CustomTextFormField(
                 hintText: UText.forgotEmailFieldHintText,
                 hintStyle: UTextStyles.title12_400w(color: Color(0xffACACAC)),
               ),
             ),

             SizedBox(height: 40.h),

             //________________Send Button___________________

             Padding(
               padding: EdgeInsets.symmetric(horizontal: 45.0),
               child: CustomElevatedButton(
                   text: UText.forgotSendButtonText,
                   textStyle: UTextStyles.title17_500w(color: Color(0xffFFFFFF)),
                   onPressed: (){Get.toNamed(Routes.VERIFY_CODE);}
               ),
             ),
           ],
         ),
       ),
     ),
    );
  }
}
