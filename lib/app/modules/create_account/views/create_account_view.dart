import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:map/app/modules/main_screen/views/widgets/custom_svg/custom_svg.dart';
import 'package:map/common/custom_padding/padding.dart';
import 'package:map/common/custom_scaffold/scaffold.dart';
import 'package:map/common/widget/custom_botton/custom_elevated_button.dart';
import 'package:map/common/widget/custom_container_bar/custom_container_bar.dart';
import 'package:map/common/widget/custom_text_form_field/custom_textfield.dart';
import 'package:map/utils/pictures/icons/icons.dart';
import 'package:map/utils/pictures/images/images.dart';
import 'package:map/utils/styles/styles.dart';
import 'package:map/utils/text/text.dart';

import '../../../../common/widget/rich_text/custom_richtext.dart';
import '../../../routes/app_pages.dart';
import '../controllers/create_account_controller.dart';

class CreateAccountView extends GetView<CreateAccountController> {
  const CreateAccountView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffold(
          imagePath: UImages.scaffoldImage,
          child: Column(
            children: [

              SizedBox(height: 124.h),

              //_________________App logo_________________________

              Image.asset(
                UIcons.appLogo,
                width: 253.w,height: 71,
              ),

              SizedBox(height: 43.h),

              CustomContainerBar(
                child: SingleChildScrollView(
                  padding: UPadding.screenPadding,
                  child: Column(
                    children: [

                      SizedBox(height: 36.h),

                      //__________________Title_____________________

                      Text(
                        UText.createAccountTitle,
                        style: UTextStyles.title25_600w(color: Color(0xff0F9BE9)),),

                      SizedBox(height: 10.h),

                      //_________________Sbu Title____________________

                      Text(
                        UText.createAccountSubTitle,
                        style: UTextStyles.title17_400w(color: Color(0xff000000)),),

                    SizedBox(height: 50.h),

                      //_________________Email Field____________________

                      CustomTextFormField(
                        hintText: UText.createAccountEmailFieldHintText,
                        hintStyle: UTextStyles.title12_400w(color: Color(0xff98847C)),
                        prefixIcon: Padding(padding: EdgeInsets.all(10.0),
                        child: CustomSvg(
                            imagePath: UIcons.createAccountEmailIcon,
                          height: 20.4.h,width: 22.39,
                        ),),
                      ),

                      SizedBox(height: 15.h),

                      //_________________ Pass Field____________________


                      CustomTextFormField(
                        hintText: UText.createAccountPassFieldHintText,
                        hintStyle: UTextStyles.title12_400w(color: Color(0xff98847C)),
                        prefixIcon: Padding(padding: EdgeInsets.all(10.0),
                          child: CustomSvg(
                            imagePath: UIcons.createAccountPrefixPassIcon,
                            height: 20.4.h,width: 22.39,
                          ),),
                        suffixIcon: Padding(padding: EdgeInsets.all(10.0),
                          child: CustomSvg(
                            imagePath: UIcons.createAccountSuffixVisibilityOffIcon,
                            height: 20.4.h,width: 22.39,
                          ),),
                      ),

                      SizedBox(height: 15.h),

                      //_________________ Re Pass Field____________________

                      CustomTextFormField(
                        hintText: UText.createAccountRePassFieldHintText,
                        hintStyle: UTextStyles.title12_400w(color: Color(0xff98847C)),
                        prefixIcon: Padding(padding: EdgeInsets.all(10.0),
                          child: CustomSvg(
                            imagePath: UIcons.createAccountPrefixPassIcon,
                            height: 20.4.h,width: 22.39,
                          ),),
                        suffixIcon: Padding(padding: EdgeInsets.all(10.0),
                          child: CustomSvg(
                            imagePath: UIcons.createAccountSuffixVisibilityOffIcon,
                            height: 20.4.h,width: 22.39,
                          ),),
                      ),

                      SizedBox(height: 65.h),

                      //__________________ Continue Button_________________

                      CustomElevatedButton(
                        rowidth: 10,
                        onPressed: () {},
                        text: UText.createAccountButtonText,
                        textStyle: UTextStyles.title17_500w(color: Colors.white),
                        imagePath: UIcons.forwardArrow,
                      ),

                      SizedBox(height: 80.h),

                      //_____________ Rich Text _________________

                      CustomRichText(
                        textOne: UText.createAccountRichFirstText,
                        textOneStyle: UTextStyles.title12_400w(
                          color: Color(0xff20222C),
                        ),
                        textTwo: UText.createAccountRichSecondText,
                        textTwoStyle: UTextStyles.title14_500w(
                          color: Color(0xffFC5C00),
                        ),
                        onTap: () => Get.toNamed(Routes.LOGIN),
                      ),
                    ],
                  ),
                )
              )
            ],
          )
      ),
    );
  }
}
