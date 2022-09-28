import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lms/presentation/utils/app_color.dart';
import 'package:lms/presentation/utils/custom_button.dart';

class ForgotPassword01 extends StatefulWidget {
  const ForgotPassword01({Key? key}) : super(key: key);

  @override
  State<ForgotPassword01> createState() => _ForgotPassword01State();
}

class _ForgotPassword01State extends State<ForgotPassword01> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: const Image(
                image: AssetImage('assets/logo/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 320.w,
                      child: Center(
                        child: SvgPicture.asset('assets/logo/ytit_logo.svg'),
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 320.w,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32.h),
                                topRight: Radius.circular(32.h)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 32.w,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/logo/logo2.png',
                                    height: 48.w,
                                    width: 247.w,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24.w,
                              ),
                              SvgPicture.asset(
                                'assets/logo/lockIcon.svg',
                                width: 48.h,
                                height: 48.h,
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Text(
                                'Forgot password',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24.sp),
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
                                textAlign: TextAlign.center,
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
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16.w, vertical: 16.h),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.r),
                                      borderSide: const BorderSide(
                                          color: Color(0xff8996A2)),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 24.w,
                              ),
                              customButton(
                                () => {
                                  GoRouter.of(context)
                                      .push('/ForgotPassword02'),
                                },
                                AppColor.blue,
                                'Continue',
                                Colors.white,
                              ),
                              SizedBox(
                                height: 40.h,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
