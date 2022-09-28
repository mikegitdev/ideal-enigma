// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import '../../app_library/presentation/basic_library.dart';
import '../utils/app_color.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static const String id = 'splash_page';
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  initTimer() {
    Timer(const Duration(seconds: 3), () {
      /* GoRouter.of(context).go("LoginView");*/
      /*Navigator.pushReplacementNamed(context, LoginView.id);*/
      GoRouter.of(context).push('/Assignment');
    });
  }

  @override
  void initState() {
    super.initState();
    initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: AppColor.blue,
            child: Center(
              child: SvgPicture.asset('assets/logo/ytit_logo.svg'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/logo/copyright.svg',
                  color: Colors.white,
                  width: 95.w,
                  height: 18.h,
                ),
                SizedBox(
                  height: 17.h,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
