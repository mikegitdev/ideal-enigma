import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lms/presentation/utils/custom_button.dart';

import '../utils/app_color.dart';

class ResetPasswordSettings extends StatefulWidget {
  const ResetPasswordSettings({Key? key}) : super(key: key);

  @override
  State<ResetPasswordSettings> createState() => _ResetPasswordSettingsState();
}

class _ResetPasswordSettingsState extends State<ResetPasswordSettings> {
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
        body: Padding(
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
                          ? SvgPicture.asset('assets/logo/selectedRadio.svg')
                          : SvgPicture.asset('assets/logo/unselectedRadio.svg'),
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
                          ? SvgPicture.asset('assets/logo/selectedRadio.svg')
                          : SvgPicture.asset('assets/logo/unselectedRadio.svg'),
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
                  GoRouter.of(context).push('/SettingsConfirmationCode'),
                },
                AppColor.blue,
                'Get Confirmation Code',
                Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
