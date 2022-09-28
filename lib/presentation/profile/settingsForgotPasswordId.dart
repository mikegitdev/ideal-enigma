import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lms/presentation/utils/custom_button.dart';

import '../utils/app_color.dart';

class SettingForgotPasswordId extends StatefulWidget {
  const SettingForgotPasswordId({Key? key}) : super(key: key);

  @override
  State<SettingForgotPasswordId> createState() =>
      _SettingForgotPasswordIdState();
}

class _SettingForgotPasswordIdState extends State<SettingForgotPasswordId> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Forgot password',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18.sp),
          ),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
                height: 32.w,
                width: 32.w,
                padding: EdgeInsets.all(6.w),
                margin: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.h),
                  border: Border.all(
                      color: const Color(0xff111111).withOpacity(0.25)),
                ),
                child: SvgPicture.asset(
                  'assets/images/arrow-left.svg',
                  color: Colors.black,
                )),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(
                height: 10.w,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet nunc ',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp),
              ),
              SizedBox(height: 32.w),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'ID number',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff111111)),
                ),
              ),
              SizedBox(
                height: 8.w,
              ),
              SizedBox(
                height: 48.h,
                width: 343.w,
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: 'ID number',
                    hintStyle: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff8996A2)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(color: Color(0xff8996A2)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24.w,
              ),
              customButton(
                () => {
                  GoRouter.of(context).push('/ResetPasswordSettings'),
                },
                AppColor.blue,
                'Continue',
                Colors.white,
              ),
              SizedBox(
                height: 35.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
