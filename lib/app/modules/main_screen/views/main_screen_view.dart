import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:map/app/modules/Friends/views/friends_view.dart';
import 'package:map/app/modules/home/views/home_view.dart';
import 'package:map/app/modules/main_screen/views/widgets/custom_svg/custom_svg.dart';
import 'package:map/app/modules/profile/views/profile_view.dart';
import 'package:map/app/modules/search/views/search_view.dart';
import 'package:map/utils/pictures/bottom_navigation_bar_icons/bottom_navigation_bar_icons.dart';
import '../controllers/main_screen_controller.dart';

class MainScreenView extends GetView<MainScreenController> {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = const [
      HomeView(),
      SearchView(),
      FriendsView(),
      ProfileView(),
    ];
    final controller = Get.find<MainScreenController>();

    return Scaffold(
      body: Obx(() {
        return Stack(
          children: [
            // _____________ Current page ____________

            pages[controller.selectedIndex.value],

            //_________________ Bottom navigation bar _______________

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 375.w,
                height: 70.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _bottomItem(controller, index: 0, icon: UBottomIcons.navHomeIcon),
                    _bottomItem(controller, index: 1, icon: UBottomIcons.navSearchIcon),
                    _bottomItem(controller, index: 2, icon: UBottomIcons.navFriendIcon),
                    _bottomItem(controller, index: 3, icon: UBottomIcons.navProfileIcon),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}

// __________________ Bottom Nav Item Widget _____________________

Widget _bottomItem(
    MainScreenController controller, {
      required int index,
      required String icon,
    }) {
  return GestureDetector(
    onTap: () => controller.changeIndex(index),
    child: SizedBox(
      width: 70,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 250),
                height: controller.selectedIndex.value == index ? 34 : 24,
                width: controller.selectedIndex.value == index ? 34 : 24,
                curve: Curves.easeInOut,
                child: controller.selectedIndex.value == index
                    ? ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: [Color(0xff6DC3F2), Color(0xff0289F2)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),
                  child: CustomSvg(imagePath: icon, color: Colors.white),
                )
                    : CustomSvg(imagePath: icon, color: Colors.grey),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 250),
              height: 7,
              width: controller.selectedIndex.value == index ? 39 : 0,
              curve: Curves.easeInOut,
              child: CustomSvg(imagePath: UBottomIcons.navSelectedBarIcon),
            ),
          ),
        ],
      ),
    ),
  );
}
