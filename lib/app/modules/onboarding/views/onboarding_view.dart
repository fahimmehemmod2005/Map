import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map/app/modules/onboarding/controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnboardingController>();

    return Scaffold(
      body: Stack(
        children: [
          // ---------------- PAGEVIEW ----------------
          PageView.builder(
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            itemCount: controller.images.length,
            itemBuilder: (_, index) {
              return Image.asset(
                controller.images[index],
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              );
            },
          ),

          // ---------------- DOT INDICATOR ----------------
          Obx(
                () => Positioned(
              bottom: 60,
              left: 60,
              right: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  controller.images.length,
                      (index) {
                    final isActive = controller.currentPage.value == index;
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: isActive ? 8 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: isActive ? Colors.red : Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
