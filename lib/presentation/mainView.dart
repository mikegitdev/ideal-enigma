import 'package:lms/app_library/presentation/assignment.library.dart';
import 'package:lms/presentation/setting/profileSetting.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../app_library/presentation/attendance_library.dart';
import '../app_library/presentation/basic_library.dart';
import '../app_library/presentation/home_library.dart';
import 'assignment/assignment_main.dart';
import 'timetable/timetable.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  bool _hideNavBar = false;
  // final int _previousBarIndex = 0;

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      Timetable(),
      AssignmentsPage(),
      const AttendanceView(),
      const ProfileSetting()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => const HomePage(),
            '/second': (context) => const HomePage(),
          },
        ),
        title: 'Home',
        textStyle: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xff5596E2),
        ),
        icon: SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(
            'assets/icons/homeIconPressed.svg',
            fit: BoxFit.contain,
          ),
        ),
        inactiveIcon: SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(
            'assets/icons/homeIcon.svg',
            fit: BoxFit.contain,
          ),
        ),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => const HomePage(),
            '/second': (context) => const HomePage()
          },
        ),
        title: 'Timetable',
        textStyle: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xff5596E2),
        ),
        icon: SvgPicture.asset(
          'assets/icons/timeTableIconPressed.svg',
          fit: BoxFit.contain,
        ),
        inactiveIcon: SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(
            'assets/icons/timeTableIcon.svg',
            fit: BoxFit.contain,
          ),
        ),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => const HomePage(),
            '/second': (context) => const HomePage()
          },
        ),
        title: 'Tasks',
        textStyle: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xff5596E2),
        ),
        icon: SvgPicture.asset(
          'assets/icons/tasksIconPressed.svg',
          fit: BoxFit.contain,
        ),
        inactiveIcon: SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(
            'assets/icons/tasksIcon.svg',
            fit: BoxFit.contain,
          ),
        ),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => const HomePage(),
            '/second': (context) => const HomePage(),
          },
        ),
        title: 'Attendance',
        textStyle: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xff5596E2),
        ),
        icon: SvgPicture.asset(
          'assets/icons/attendanceIconPressed.svg',
          fit: BoxFit.contain,
        ),
        inactiveIcon: SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(
            'assets/icons/attendanceIcon.svg',
            fit: BoxFit.contain,
          ),
        ),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => const HomePage(),
            '/second': (context) => const HomePage(),
          },
        ),
        title: 'Attendance',
        textStyle: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xff5596E2),
        ),
        icon: SvgPicture.asset(
          'assets/icons/moreIconPressed.svg',
          fit: BoxFit.contain,
        ),
        inactiveIcon: SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(
            'assets/icons/moreIcon.svg',
            fit: BoxFit.contain,
          ),
        ),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  void initState() {
    super.initState();

    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Navigation Bar Demo')),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        padding: NavBarPadding.symmetric(vertical: 16.h),
        // onItemSelected: (index) {
        //   // if (index == 0 && _previousBarIndex != index) {
        //   //   Navigator.of(context).pushReplacementNamed("/HomePage");
        //   // }
        //   // _previousBarIndex = index;
        // },

        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0 ? 0.0 : 68.h,
        hideNavigationBarWhenKeyboardShows: true,
        margin: const EdgeInsets.all(0.0),
        popActionScreens: PopActionScreensType.all,
        bottomScreenMargin: 0.0,
        selectedTabScreenContext: (context) {
          context = context;
        },

        hideNavigationBar: _hideNavBar,
        decoration: NavBarDecoration(
            colorBehindNavBar: Colors.indigo,
            borderRadius: BorderRadius.circular(8)),
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style6,
        // Choose the nav bar style with this property
      ),
    );
  }
}
