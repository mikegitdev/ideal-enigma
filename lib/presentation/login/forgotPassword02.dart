import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lms/presentation/utils/custom_button.dart';

import '../utils/app_color.dart';

class ForgotPassword02 extends StatefulWidget {
  const ForgotPassword02({Key? key}) : super(key: key);

  @override
  State<ForgotPassword02> createState() => _ForgotPassword02State();
}

class _ForgotPassword02State extends State<ForgotPassword02> {
  late bool emailRadio;
  late bool numberRadio;
  @override
  void initState() {
    emailRadio = true;
    numberRadio = false;
    super.initState();
  }

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

                              // Custom Radio
                              InkWell(
                                  onTap: () {
                                    if (numberRadio) {
                                      emailRadio = true;
                                      numberRadio = false;
                                    }
                                    setState(() {});
                                  },
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 50.w,
                                      ),
                                      emailRadio
                                          ? SvgPicture.asset(
                                              'assets/logo/selectedRadio.svg')
                                          : SvgPicture.asset(
                                              'assets/logo/unselectedRadio.svg'),
                                      SizedBox(
                                        width: 12.w,
                                      ),
                                      Text(
                                        'exa**********@gmail.com',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.sp),
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                height: 28.h,
                              ),
                              InkWell(
                                  onTap: () {
                                    if (emailRadio) {
                                      numberRadio = true;
                                      emailRadio = false;
                                    }
                                    setState(() {});
                                  },
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 50.w,
                                      ),
                                      numberRadio
                                          ? SvgPicture.asset(
                                              'assets/logo/selectedRadio.svg')
                                          : SvgPicture.asset(
                                              'assets/logo/unselectedRadio.svg'),
                                      SizedBox(
                                        width: 12.w,
                                      ),
                                      Text(
                                        '+998 99 999 ** **',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.sp),
                                      ),
                                    ],
                                  )),
                              // =================

                              SizedBox(
                                height: 24.w,
                              ),
                              customButton(
                                () => {
                                  GoRouter.of(context)
                                      .push('/ConfirmationCodeView'),
                                },
                                AppColor.blue,
                                'Get Confirmation Code',
                                Colors.white,
                              ),
                              SizedBox(
                                height: 45.h,
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
