import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map/app/routes/app_pages.dart';

class OnboardingController extends GetxController {
  final pageController = PageController();
  final currentPage = 0.obs;

  final List<String> images = [
    'assets/onboarding/1.jpg',
    'assets/onboarding/2.jpg',
    'assets/onboarding/3.jpg',
    'assets/onboarding/4.jpg',
  ];

  void onPageChanged(int index) {
    currentPage.value = index;

    // Auto navigate if last page
    if (index == images.length - 1) {
      Future.delayed(const Duration(milliseconds: 600), () {
        Get.offAllNamed(Routes.LOGIN); // Replace with your route
      });
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
