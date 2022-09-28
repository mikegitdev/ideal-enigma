import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customButton(
  Function() onPress,
  Color backgroundColor,
  String buttonText,
  Color textColor,
) {
  return InkWell(
    onTap: onPress,
    child: Container(
      width: 343.w,
      height: 48.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r), color: backgroundColor),
      child: Center(
          child: Text(
        buttonText,
        style: TextStyle(
            fontSize: 20.sp, fontWeight: FontWeight.w500, color: textColor),
      )),
    ),
  );
}
