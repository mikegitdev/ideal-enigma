import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_color.dart';
import '../utils/elevatedbuttonpress.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Personal information',
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/ProfileCards/ProfileImage2.png',
                      alignment: Alignment.center,
                      width: 96.w,
                      height: 96.h,
                    ),
                    Text('Matchanov Muhammadjon \nSarvarbek o’gli',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                        textAlign: TextAlign.center),
                    Text(
                      'Student iD: YTIT-123456789',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: Colors.black38),
                    )
                  ],
                ),
              ),
              24.verticalSpace,
              Text(
                'Student information',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
              ),
              16.verticalSpace,
              Text(
                'Education type',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
              ),
              8.verticalSpace,
              SizedBox(
                width: 343.w,
                height: 48.h,
                child: TextFormField(
                  initialValue: 'Full time education',
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    filled: true,
                    fillColor: const Color(0xFFF8F8FF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(color: Color(0xffE5E5E5)),
                    ),
                  ),
                ),
              ),
              16.verticalSpace,
              Text(
                'Faculty',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
              ),
              8.verticalSpace,
              SizedBox(
                width: 343.w,
                height: 48.h,
                child: TextFormField(
                  initialValue: 'School of Bussiness',
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    filled: true,
                    fillColor: const Color(0xFFF8F8FF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(color: Color(0xffE5E5E5)),
                    ),
                  ),
                ),
              ),
              16.verticalSpace,
              Text(
                'Direction',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
              ),
              8.verticalSpace,
              SizedBox(
                width: 343.w,
                height: 48.h,
                child: TextFormField(
                  initialValue: 'DEPARTMENT OF APPLIED INFORMATICS',
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    filled: true,
                    fillColor: const Color(0xFFF8F8FF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(color: Color(0xffE5E5E5)),
                    ),
                  ),
                ),
              ),
              16.verticalSpace,
              Text(
                'Education language',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
              ),
              8.verticalSpace,
              SizedBox(
                width: 343.w,
                height: 48.h,
                child: TextFormField(
                  initialValue: 'Uzbek',
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    filled: true,
                    fillColor: const Color(0xFFF8F8FF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(color: Color(0xffE5E5E5)),
                    ),
                  ),
                ),
              ),
              16.verticalSpace,
              Text(
                'Level',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
              ),
              8.verticalSpace,
              SizedBox(
                width: 343.w,
                height: 48.h,
                child: TextFormField(
                  initialValue: 'Level 1',
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    filled: true,
                    fillColor: const Color(0xFFF8F8FF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(color: Color(0xffE5E5E5)),
                    ),
                  ),
                ),
              ),
              16.verticalSpace,
              Text(
                'Group number',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
              ),
              8.verticalSpace,
              SizedBox(
                width: 343.w,
                height: 48.h,
                child: TextFormField(
                  initialValue: 'GR-10203040',
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    filled: true,
                    fillColor: const Color(0xFFF8F8FF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(color: Color(0xffE5E5E5)),
                    ),
                  ),
                ),
              ),
              16.verticalSpace,
              Text(
                'Student email',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
              ),
              8.verticalSpace,
              SizedBox(
                width: 343.w,
                height: 48.h,
                child: TextFormField(
                  initialValue: 'example@student.ytit.uz',
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    filled: true,
                    fillColor: const Color(0xFFF8F8FF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(color: Color(0xffE5E5E5)),
                    ),
                  ),
                ),
              ),
              24.verticalSpace,
              elevatedButtonPress(
                343,
                'Request change',
                () => {},
                Colors.white,
                AppColor.blue,
                null,
              ),
              24.verticalSpace
            ],
          ),
        ),
      ),
    );
  }
}
