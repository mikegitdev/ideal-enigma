import 'package:device_info_plus/device_info_plus.dart';

import 'package:lms/app_library/presentation/basic_library.dart';
import 'package:lms/domain/repository/user_login_repository.dart';
import 'package:lms/domain/riverpod/text_controller_provider.dart';
import 'package:lms/presentation/utils/custom_button.dart';
import 'package:lms/presentation/utils/render_form_field.dart';
import 'package:lms/services/network/dio_service.dart';
import 'package:lms/services/storages/get_storage.dart';
import 'package:lms/services/storages/globals.dart';
import 'package:logger/logger.dart';

import '../utils/app_color.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({Key? key}) : super(key: key);
  static const String id = 'login_page';
  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  late bool hidePassword;
  final logger = Logger();

  final deviceInfoPlugin = DeviceInfoPlugin();

  @override
  void initState() {
    super.initState();
    hidePassword = true;
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
              height: 1.sh,
              width: 1.sw,
              child: const Image(
                image: AssetImage('assets/logo/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: const [
                // SizedBox(
                //   height: 320.w,
                //   child: Center(
                //     child: SvgPicture.asset('assets/logo/ytit_logo.svg'),
                //   ),
                // ),
                Expanded(
                  child: SizedBox(),
                ),
              ],
            ),
            SizedBox(
              height: 1.sh,
              width: 1.sw,
              child: SingleChildScrollView(
                // physics: NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 320.w,
                      /*child: Center(
                      child: SvgPicture.asset('assets/logo/ytit_logo.svg'),
                    ),*/
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
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
                      child: Form(
                        key: formKey,
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
                            Text(
                              'Welcome to YTIT eclass',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24.sp),
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
                            Consumer(builder: (context, ref, _) {
                              return SizedBox(
                                  // height: 54.h,
                                  width: 343.w,
                                  child: renderTextFormField(
                                      controller: ref.watch(idNumberCtr),
                                      hint: 'ID number',
                                      obscured: false,
                                      textInputType: TextInputType.emailAddress,
                                      onSaved: (newValue) {
                                        ref.read(idNumberCtr.state).state.text =
                                            newValue;
                                      },
                                      validator: (value) {
                                        if (ref
                                                .read(idNumberCtr.state)
                                                .state
                                                .text
                                                .length <=
                                            4) {
                                          return 'Too Short';
                                        }

                                        return null;
                                      }));
                            }),
                            // SizedBox(
                            //   height: 48.h,
                            //   width: 343.w,
                            //   child: TextFormField(
                            //     style: TextStyle(
                            //       fontSize: 20.sp,
                            //       fontWeight: FontWeight.w400,
                            //     ),
                            //     decoration: InputDecoration(
                            //       hintText: 'ID number',
                            //       hintStyle: TextStyle(
                            //           fontSize: 18.sp,
                            //           fontWeight: FontWeight.w400,
                            //           color: const Color(0xff8996A2)),
                            //       contentPadding: EdgeInsets.symmetric(
                            //           horizontal: 16.w, vertical: 16.h),
                            //       filled: true,
                            //       fillColor: Colors.white,
                            //       border: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(8.r),
                            //       ),
                            //       enabledBorder: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(8.r),
                            //         borderSide: const BorderSide(
                            //             color: Color(0xff8996A2)),
                            //       ),
                            //     ),
                            //   ),
                            // ),

                            SizedBox(
                              height: 8.h,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Password',
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
                              //  height: 48.h,
                              width: 343.w,
                              child: TextFormField(
                                controller: ref.watch(idPassCtr),
                                obscureText: hidePassword,
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400,
                                ),
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
                                  hintText: 'Password',
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
                              height: 12.w,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () => {
                                  GoRouter.of(context)
                                      .push('/ForgotPassword01'),
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff1A5CCE)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 24.w,
                            ),
                            customButton(
                              () async {
                                if (formKey.currentState!.validate()) {
                                  formKey.currentState!.save();
                                  final deviceInfo =
                                      await deviceInfoPlugin.deviceInfo;
                                  // final map = deviceInfo.toMap();
                                  // logger.wtf(map);
                                  // logger.wtf(deviceInfo.toMap()['id']);
                                  // logger.wtf(deviceInfo.toMap()['model']);
                                  if (formKey.currentState!.validate()) {
                                    formKey.currentState!.save();
                                    // APP Send cals to back
                                    logger.i('idNumberCtr',
                                        ref.read(idNumberCtr.state).state.text);
                                    logger.i('idPassCtr',
                                        ref.read(idPassCtr.state).state.text);
                                    final LmsDataDio lmsDataDio = LmsDataDio();
                                    final responseLogin = await UserRepository(
                                            lmsDataDio)
                                        .getUsersRequested

                                        // final res = await LmsDataDio().UserDio

                                        (
                                            deviceInfo.toMap()['id'], //deviceID
                                            'android', //deviceType
                                            deviceInfo
                                                .toMap()['model'], // deviceName
                                            loginBox.read(
                                                'userToken'), // deviceToken
                                            (ref
                                                    .read(idNumberCtr.state)
                                                    .state
                                                    .text)
                                                .toString(), // userName
                                            (ref
                                                    .read(idPassCtr.state)
                                                    .state
                                                    .text)
                                                .toString());

                                    logger.i(loginBox.read('userToken'));
                                    logger.wtf(responseLogin);
                                    if (!mounted) return;
                                    GoRouter.of(context).push('/MainView');
                                  }
                                }
                              },
                              AppColor.blue,
                              'Log In',
                              Colors.white,
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
