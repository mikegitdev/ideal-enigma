import 'package:lms/presentation/utils/custom_button.dart';

import '../../app_library/presentation/basic_library.dart';
import '../utils/app_color.dart';

class SettingsResetPassword extends StatefulWidget {
  const SettingsResetPassword({Key? key}) : super(key: key);

  @override
  State<SettingsResetPassword> createState() => _SettingsResetPasswordState();
}

class _SettingsResetPasswordState extends State<SettingsResetPassword> {
  late bool hidePassword;
  @override
  void initState() {
    hidePassword = true;
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
            'Enter New Password',
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
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(
                height: 10.w,
              ),
              Text(
                'Create a new password that is at least 8 characters long.',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp),
              ),
              SizedBox(height: 32.w),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'New Password',
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
                    hintText: 'Enter New Password',
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
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Confirm Password',
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
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          if (hidePassword) {
                            hidePassword = false;
                          } else {
                            hidePassword = true;
                          }
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.w),
                        child: SvgPicture.asset(
                          'assets/logo/passwordHide.svg',
                          color: hidePassword
                              ? const Color(0xff8996A2)
                              : Colors.blue,
                        ),
                      ),
                    ),
                    hintText: 'Confirm New Password',
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
                () => {},
                AppColor.blue,
                'Reset Password',
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
