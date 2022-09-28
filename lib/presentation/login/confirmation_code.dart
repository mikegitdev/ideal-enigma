import 'package:lms/presentation/utils/custom_button.dart';
import 'package:pinput/pinput.dart';

import '../../app_library/presentation/basic_library.dart';
import '../utils/app_color.dart';

class ConfirmationCodeView extends StatefulWidget {
  const ConfirmationCodeView({Key? key}) : super(key: key);

  @override
  State<ConfirmationCodeView> createState() => _ConfirmationCodeViewState();
}

class _ConfirmationCodeViewState extends State<ConfirmationCodeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              'Confirmation code',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24.sp),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              'Enter 6 digit Confirmation Code, which we sent to  exa**********@gmail.com',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 24.w),
                            Pinput(
                              focusedPinTheme: PinTheme(
                                width: 48.w,
                                height: 48.w,
                                textStyle: TextStyle(
                                    fontSize: 24.sp,
                                    color: const Color(0xff001018),
                                    fontWeight: FontWeight.w700),
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColor.blue),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              defaultPinTheme: PinTheme(
                                width: 48.w,
                                height: 48.w,
                                textStyle: TextStyle(
                                    fontSize: 24.sp,
                                    color: const Color(0xff001018),
                                    fontWeight: FontWeight.w700),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffD9DDE1)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              length: 6,
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            Text(
                              'Resend code after 00:59',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: const Color(0xff001018)),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            customButton(
                              () => {
                                GoRouter.of(context).go('/ResetPasswordView')
                              },
                              AppColor.blue,
                              'Confirm',
                              Colors.white,
                            ),
                            SizedBox(
                              height: 35.h,
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
    );
  }
}
