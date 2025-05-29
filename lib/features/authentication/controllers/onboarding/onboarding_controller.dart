import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update current page index when page changes
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to a specific page when a dot is tapped
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Handle next button click to navigate to the next page
  void nextButtonClick() {
    if (currentPageIndex.value < 2) {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    } else {
      // Get.to(LoginScreen());
    }
  }

  // Handle skip button click to skip to last page of the onboarding process
  void skipButtonClick() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}