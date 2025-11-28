import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:map/common/custom_scaffold/scaffold.dart';
import 'package:map/utils/pictures/images/images.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffold(
          imagePath: UImages.scaffoldImageSecond,
          child: Column(
            children: [

            ],
          )
      ),
    );
  }
}
