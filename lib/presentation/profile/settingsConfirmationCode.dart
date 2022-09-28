import 'package:lms/presentation/utils/custom_button.dart';
import 'package:pinput/pinput.dart';

import '../../app_library/presentation/basic_library.dart';
import '../utils/app_color.dart';

class SettingsConfirmationCode extends StatefulWidget {
  const SettingsConfirmationCode({Key? key}) : super(key: key);

  @override
  State<SettingsConfirmationCode> createState() =>
      _SettingsConfirmationCodeState();
}

class _SettingsConfirmationCodeState extends State<SettingsConfirmationCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Confirmation code',
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
            Text(
              'Enter 6 digit Confirmation Code, which we sent to  exa**********@gmail.com',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp),
            ),
            SizedBox(height: 24.w),
            Pinput(
              focusedPinTheme: PinTheme(
                width: 48.w,
                height: 48.w,
                textStyle: const TextStyle(
                    fontSize: 24,
                    color: Color(0xff001018),
                    fontWeight: FontWeight.w700),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.blue),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              defaultPinTheme: PinTheme(
                width: 48.w,
                height: 48.w,
                textStyle: const TextStyle(
                    fontSize: 24,
                    color: Color(0xff001018),
                    fontWeight: FontWeight.w700),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffD9DDE1)),
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
              () => {GoRouter.of(context).go('/SettingsResetPassword')},
              AppColor.blue,
              'Confirm',
              Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
