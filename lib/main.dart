

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/bindings/dependency_injection.dart';



void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  // DeviceUtils.lockDevicePortrait();

  runApp(
    const MyApp(), // Wrap your app
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(375, 812),
      child: GetMaterialApp(
        initialBinding:  DependencyInjection(),
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200),
        // initialRoute: AppRoutes.splashScreen ,
        navigatorKey: Get.key,
        // getPages: AppRoutes.routes,
      ),
    );
  }
}

