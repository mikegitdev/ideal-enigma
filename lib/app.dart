import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:lms/presentation/assignment/assignment_exam.dart';
import 'package:lms/presentation/setting/changeLanguages.dart';
import 'package:lms/presentation/setting/changePassword.dart';
import 'package:lms/presentation/setting/profileSetting.dart';
import 'package:lms/presentation/setting/settingNotification.dart';
import 'package:lms/presentation/setting/settingTheme.dart';

import '../../presentation/mainView.dart';
import 'app_library/presentation/assignment.library.dart';
import 'app_library/presentation/attendance_library.dart';
import 'app_library/presentation/basic_library.dart';
import 'app_library/presentation/course_library.dart';
import 'app_library/presentation/home_library.dart';
import 'app_library/presentation/login_library.dart';
import 'app_library/presentation/profile_library.dart';
import 'presentation/timetable/timetable.dart';

class LMSMobileApp extends StatefulWidget {
  const LMSMobileApp({Key? key}) : super(key: key);

  @override
  State<LMSMobileApp> createState() => _LMSMobileAppState();
}

class _LMSMobileAppState extends State<LMSMobileApp> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  Future<void> initialization() async {
    await Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          routeInformationProvider: _router.routeInformationProvider,
          routeInformationParser: _router.routeInformationParser,
          routerDelegate: _router.routerDelegate,
          debugShowCheckedModeBanner: false,
          debugShowMaterialGrid: false,
          theme: ThemeData(
            fontFamily: 'Inter',
            brightness: Brightness.light,
            primaryColor: const Color(0xff1A5CCE),
            textTheme: TextTheme(
              headline1:
                  TextStyle(fontSize: 72.0.sp, fontWeight: FontWeight.bold),
              headline6:
                  TextStyle(fontSize: 36.0.sp, fontStyle: FontStyle.normal),
              bodyText2: TextStyle(
                fontSize: 16.0.sp,
              ),
            ),
          ),
          builder: (context, widget) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
        );
      },
      child: const AttendanceView(),
    );
  }

  final GoRouter _router = GoRouter(routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const LoginView(),
    ),
    GoRoute(
      path: '/LoginView',
      builder: (BuildContext context, GoRouterState state) => const LoginView(),
    ),
    GoRoute(
      path: '/ForgotPassword01',
      builder: (BuildContext context, GoRouterState state) =>
          const ForgotPassword01(),
    ),
    GoRoute(
      path: '/ForgotPassword02',
      builder: (BuildContext context, GoRouterState state) =>
          const ForgotPassword02(),
    ),
    GoRoute(
      path: '/ConfirmationCodeView',
      builder: (BuildContext context, GoRouterState state) =>
          const ConfirmationCodeView(),
    ),
    GoRoute(
      path: '/ResetPasswordView',
      builder: (BuildContext context, GoRouterState state) =>
          const ResetPasswordView(),
    ),
    GoRoute(
      path: '/HomePage',
      builder: (BuildContext context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/notificationPage',
      builder: (BuildContext context, state) => const NotificationPage(),
    ),
    GoRoute(
      path: '/course',
      builder: (BuildContext context, state) => Course(),
    ),
    GoRoute(
      path: '/ProfileSetting',
      builder: (BuildContext context, state) => const ProfileSetting(),
    ),
    GoRoute(
      path: '/PersonalInformation',
      builder: (BuildContext context, state) => const PersonalInformation(),
    ),
    GoRoute(
      path: '/MyCourses',
      builder: (BuildContext context, state) => const MyCourses(),
    ),
    GoRoute(
      path: '/MyGrade',
      builder: (BuildContext context, state) => const MyGrade(),
    ),
    GoRoute(
      path: '/Setting',
      builder: (BuildContext context, state) => const Setting(),
    ),
    GoRoute(
      path: '/AssignmentDetailPage',
      builder: (BuildContext context, state) => const AssignmentDetailPage(),
    ),
    GoRoute(
      path: '/AssignmentsPage',
      builder: (BuildContext context, state) => AssignmentsPage(),
    ),
    GoRoute(
      path: '/AssignmentExamPage',
      builder: (BuildContext context, state) => const AssignmentExamPage(),
    ),
    GoRoute(
      path: '/ProfileSetting',
      builder: (BuildContext context, state) => const ProfileSetting(),
    ),
    GoRoute(
      path: '/PersonalInformation',
      builder: (BuildContext context, state) => const PersonalInformation(),
    ),
    GoRoute(
      path: '/ProfileSetting',
      builder: (BuildContext context, state) => const ProfileSetting(),
    ),
    GoRoute(
      path: '/PersonalInformation',
      builder: (BuildContext context, state) => const PersonalInformation(),
    ),
    GoRoute(
      path: '/MyCourses',
      builder: (BuildContext context, state) => const MyCourses(),
    ),
    GoRoute(
      path: '/MyGrade',
      builder: (BuildContext context, state) => const MyGrade(),
    ),
    GoRoute(
      path: '/Setting',
      builder: (BuildContext context, state) => const Setting(),
    ),
    GoRoute(
      path: '/MainView',
      builder: (BuildContext context, state) => const MainView(),
    ),
    GoRoute(
      path: '/Timetable',
      builder: (BuildContext context, state) => Timetable(),
    ),
    GoRoute(
      path: '/ChangeTheme',
      builder: (BuildContext context, state) => const ChangeTheme(),
    ),
    GoRoute(
      path: '/NotificationSetting',
      builder: (BuildContext context, state) => const NotificationSetting(),
    ),
    GoRoute(
      path: '/ChangePassword',
      builder: (BuildContext context, state) => const ChangePassword(),
    ),
    GoRoute(
      path: '/ChangeLanguages',
      builder: (BuildContext context, state) => const ChangeLanguages(),
    ),
  ]);
}
