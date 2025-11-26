import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      ensureScreenSize: true,
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      child: GetMaterialApp(
        title: "Map",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
