import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_color.dart';
import '../utils/elevatedbuttonpress.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  late bool hideCurrentPassword;
  late bool hideNewPassword;
  late bool hideConfirmPassword;
  @override
  void initState() {
    hideCurrentPassword = true;
    hideNewPassword = true;
    hideConfirmPassword = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Change Password',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
                color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
                padding: const EdgeInsets.all(8),
                child: SvgPicture.asset(
                  'assets/logo/arrowLeft.svg',
                )),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Create a new password that is at least 8 characters long.',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
              ),
              24.verticalSpace,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Current password',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              8.verticalSpace,
              SizedBox(
                height: 48.h,
                width: 343.w,
                child: TextFormField(
                  obscureText: hideCurrentPassword,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          if (hideCurrentPassword) {
                            hideCurrentPassword = false;
                          } else {
                            hideCurrentPassword = true;
                          }
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.w),
                        child: SvgPicture.asset(
                          'assets/logo/passwordHide.svg',
                          color: hideCurrentPassword
                              ? const Color(0xff8996A2)
                              : Colors.blue,
                        ),
                      ),
                    ),
                    hintText: 'Enter Current Password',
                    hintStyle: TextStyle(
                        fontSize: 16.sp,
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
              16.verticalSpace,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'New Password',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              8.verticalSpace,
              SizedBox(
                height: 48.h,
                width: 343.w,
                child: TextFormField(
                  obscureText: hideNewPassword,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          if (hideNewPassword) {
                            hideNewPassword = false;
                          } else {
                            hideNewPassword = true;
                          }
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.w),
                        child: SvgPicture.asset(
                          'assets/logo/passwordHide.svg',
                          color: hideNewPassword
                              ? const Color(0xff8996A2)
                              : Colors.blue,
                        ),
                      ),
                    ),
                    hintText: 'Enter New Password',
                    hintStyle: TextStyle(
                        fontSize: 16.sp,
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
              16.verticalSpace,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              8.verticalSpace,
              SizedBox(
                height: 48.h,
                width: 343.w,
                child: TextFormField(
                  obscureText: hideConfirmPassword,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          if (hideConfirmPassword) {
                            hideConfirmPassword = false;
                          } else {
                            hideConfirmPassword = true;
                          }
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.w),
                        child: SvgPicture.asset(
                          'assets/logo/passwordHide.svg',
                          color: hideConfirmPassword
                              ? const Color(0xff8996A2)
                              : Colors.blue,
                        ),
                      ),
                    ),
                    hintText: 'Confirm New Password',
                    hintStyle: TextStyle(
                        fontSize: 16.sp,
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
              24.verticalSpace,
              elevatedButtonPress(
                343,
                'View more',
                () => {},
                Colors.white,
                AppColor.blue,
                null,
              ),
              20.verticalSpace,
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
