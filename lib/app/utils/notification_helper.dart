import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

///==================================✅✅showCustomSnackBar✅✅=======================
void showCustomSnackBar(String? message,
    {bool isError = true, bool getXSnackBar = false}) {
  if (message != null && message.isNotEmpty) {
    if (getXSnackBar) {
      Get.showSnackbar(GetSnackBar(
        backgroundColor: isError ? Colors.red : Colors.green,
        message: message,
        duration: const Duration(seconds: 3),
        snackStyle: SnackStyle.FLOATING,
        margin: EdgeInsets.all(10.sp),
        borderRadius: 8.r,
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
      ));
    } else {
      ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
        dismissDirection: DismissDirection.horizontal,
        margin: EdgeInsets.only(
          right: 10.h,
          top: 10.h,
          bottom: 10.h,
          left: 10.h,
        ),
        duration: const Duration(seconds: 3),
        backgroundColor: isError ? Colors.red : Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        content: Text(
          message,
          style: TextStyle(fontSize: 12.w),
        ),
      ));
    }
  }
}

/*
    showCustomSnackBar("This is a custom snack bar message!", isError: false);

 */

///==================================✅✅toastMessage✅✅=======================
void toastMessage({required String message}) {
  Fluttertoast.showToast(
    msg: message,
    backgroundColor: Colors.green,
    textColor: Colors.white,
    gravity: ToastGravity.BOTTOM,
    toastLength: Toast.LENGTH_LONG,
  );
}

/*
 toastMessage(message: "Hello, this is a toast message!");
 */
