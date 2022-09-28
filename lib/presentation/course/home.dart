import 'package:lms/presentation/course/exams.dart';
import 'package:lms/presentation/course/syllabus.dart';
import 'package:lms/presentation/utils/CustomTabIndicator.dart';
import '../../app_library/presentation/basic_library.dart';
import '../utils/app_color.dart';
import 'announcements.dart';
import 'assignments.dart';
import 'attendance.dart';
import 'course_info.dart';

class Course extends ConsumerStatefulWidget {
  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends ConsumerState<Course>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              color: const Color(0Xff1A5CCE),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width),
          Positioned(
              top: 60.h,
              left: 16.w,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 32.h,
                  width: 32.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.h),
                      color: Colors.white.withOpacity(0.2)),
                  child: Center(
                    child: SvgPicture.asset('assets/images/arrow-left.svg'),
                  ),
                ),
              )),
          Positioned(
            top: 160.h,
            bottom: 0,
            child: Container(
              height: 500,
              padding: EdgeInsets.all(16.h),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.r),
                      topRight: Radius.circular(25.r)),
                  color: Colors.white),
              child: Column(
                children: [
                  Text(
                    'Artificial Intelligence',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: const Color(0xFF111111),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'YTIT-1012102',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xFF8996A2),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    height: 27.h,
                    child: TabBar(
                      controller: tabController,
                      isScrollable: true,
                      labelPadding: const EdgeInsets.only(right: 24),
                      indicator: CustomTabIndicator(
                          color: AppColor.blue,
                          radius: 3.r,
                          indicatorHeight: 3.0),
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 3,
                      labelColor: AppColor.blue,
                      unselectedLabelColor: const Color(0xFF001018),
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14.sp),
                      unselectedLabelStyle: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 14.sp),
                      tabs: const [
                        Text(
                          'Course info',
                        ),
                        Text(
                          'Syllabus',
                        ),
                        Text('Attendance'),
                        Text('Announcements'),
                        Text('Assignments'),
                        Text(
                          'Exams',
                        ),
                      ],
                    ),
                  ),
                  Divider(
                      thickness: 1,
                      height: 0,
                      color: Colors.grey.withOpacity(0.5)),
                  SizedBox(height: 15.h),
                  Expanded(
                      child: SizedBox(
                    width: MediaQuery.of(context).size.width - 32.h,
                    child: ScrollConfiguration(
                      behavior:
                          const MaterialScrollBehavior().copyWith(overscroll: false),
                      child: TabBarView(
                        controller: tabController,
                        physics: const ClampingScrollPhysics(),
                        children: [
                          CourseInfo(),
                          SyllabusView(),
                          Attendance(),
                          Announcements(),
                          Assignments(),
                          Exams()
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            ),
          )
        ],
      ),
    ); // Hello world
  }
}
