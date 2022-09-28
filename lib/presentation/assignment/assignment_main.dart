//import 'package:dropdown_button2/dropdown_button2.dart';
// ignore_for_file: must_be_immutable

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:lms/presentation/utils/elevatedbuttonpress.dart';

import '../../app_library/presentation/basic_library.dart';
import '../utils/app_color.dart';

class AssignmentsPage extends StatelessWidget {
  AssignmentsPage({Key? key}) : super(key: key);

  List<String> subjectList = [
    'Academic English',
    'Artificial Intelligence',
    'Calculus',
    'Java  Programming',
    'Art Design',
  ];
  String subject = 'Academic English';

  List<Map<String, String>> assignmentList = [
    {
      'homeworkNumber': '1',
      'status': 'No submission',
    },
    {
      'homeworkNumber': '2',
      'status': 'Submitted for grading',
    },
    {
      'homeworkNumber': '4',
      'status': 'Score: 80/100 ',
    },
  ];

  List<Map<String, String>> examList = [
    {
      'status': 'Exam revision task',
    },
    {
      'status': 'Score: 86/100',
    },
    {
      'status': 'Score: 80/100',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          width: MediaQuery.of(context).size.width * 0.55,
          child: Center(
            child: DropdownButtonFormField2(
              icon: SvgPicture.asset('assets/icons/StrokeIcon.svg'),
              items: subjectList.map((String category) {
                return DropdownMenuItem(
                  value: category,
                  child: Text(category,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          color: const Color(0xff111111))),
                );
              }).toList(),
              onChanged: (newValue) {
                subject = newValue.toString();
              },
              value: subject,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none),
              iconEnabledColor: const Color(0xff1A5CCE),
              iconDisabledColor: Colors.black,
              dropdownPadding: EdgeInsets.only(
                top: 8.h,
                bottom: 8.h,
              ),
              itemHeight: 40.h,
              dropdownMaxHeight: 300.h,
              scrollbarAlwaysShow: false,
              dropdownWidth: MediaQuery.of(context).size.width * 0.6,
              itemPadding: EdgeInsets.symmetric(horizontal: 10.h),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.h),
              ),
              dropdownElevation: 1,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w, top: 12.0.h),
        child: SizedBox(
          child: DefaultTabController(
            initialIndex: 0,
            length: 3,
            child: Column(
              children: [
                Container(
                  height: 40.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF6F6F5),
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(40.r)),
                  child: TabBar(
                    //  indicatorColor: ,
                    padding: EdgeInsets.all(4.h),
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.r),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 1,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),

                    labelStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),

                    labelColor: Colors.black,
                    isScrollable: false,
                    unselectedLabelColor: Colors.black54,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                    tabs: [
                      Container(
                          alignment: Alignment.center,
                          width: 111.w,
                          padding: const EdgeInsets.symmetric(
                              vertical: 7, horizontal: 12),
                          height: 32.h,
                          child: Text('Assignments',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp))),
                      Container(
                          alignment: Alignment.center,
                          width: 111.w,
                          padding: const EdgeInsets.symmetric(
                              vertical: 7, horizontal: 12),
                          height: 32.h,
                          child: Text('Exams',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp))),
                      Container(
                          alignment: Alignment.center,
                          width: 111.w,
                          padding: const EdgeInsets.symmetric(
                              vertical: 7, horizontal: 12),
                          height: 32.h,
                          child: Text('Quiz & Tests',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp))),
                    ],
                  ),
                ),
                Flexible(
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            for (int i = 0; i < assignmentList.length; i++) ...{
                              itemOfAnnouncements(
                                context,
                                assignmentList[i]['homeworkNumber'],
                                assignmentList[i]['status'],
                              )
                            },
                            50.verticalSpace
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            for (int i = 0; i < examList.length; i++) ...{
                              itemOfExams(
                                context,
                                examList[i]['status'],
                              )
                            },
                            50.verticalSpace
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            for (int i = 0; i < assignmentList.length; i++) ...{
                              itemOfAnnouncements(
                                context,
                                assignmentList[i]['homeworkNumber'],
                                assignmentList[i]['status'],
                              )
                            },
                            50.verticalSpace
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget itemOfAnnouncements(
      BuildContext context, String? homeworkNumber, String? status) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Homework #${homeworkNumber!}',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: const Color(0xFF111111)),
                ),
                const Spacer(),
                Container(
                  height: 22.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
                  decoration: BoxDecoration(
                      color: status == 'No submission'
                          ? const Color(0xFFFE4557).withOpacity(0.1)
                          : status == 'Submitted for grading'
                              ? const Color(0xFF44C4A1).withOpacity(0.1)
                              : Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(100.r))),
                  child: Text(
                    status!,
                    style: TextStyle(
                        color: status == 'No submission'
                            ? const Color(0xFFFE4557)
                            : status == 'Submitted for grading'
                                ? const Color(0xFF44C4A1)
                                : const Color(0xFF111111),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              children: [
                SizedBox(
                    height: 16.h,
                    width: 16.w,
                    child: SvgPicture.asset(
                      'assets/images/flag.svg',
                      color: AppColor.blue,
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  'Week 6',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF111111)),
                )
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                SizedBox(
                    height: 16.h,
                    width: 16.w,
                    child: SvgPicture.asset(
                      'assets/images/clock2.svg',
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  '06.06.2022 10:30 ~ 10.06.2022 23:55 ',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF111111)),
                )
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                SizedBox(
                    height: 16.h,
                    width: 16.w,
                    child: SvgPicture.asset(
                      'assets/images/diagram.svg',
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  'Max. Scor: 100',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF111111)),
                )
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 48.h,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. aug sed duis cras vitae. Laoreet est molestie egestas dui, proin cursus quis blandit. Viverra eleifend vestibulum donec nunc. Suspendisse sed magna a tellus. Eget tortor turpis placerat sit sit id. In sit quis amet, purus ac turpis at. Enim scelerisque sed ultrices diam eget dictumst nec phasellus. Euismod at quis sed urna, et non porttitor turpis. Ut vitae interdum ut duis proin potenti adipiscing. Malesuada consequat, eget sit id dolor. Nunc tincidunt faucibus urna facilisis feugiat tincidunt sed. Interdum nibh sit ut at. At phasellus tortor quis nibh odio etiam convallis.',
                maxLines: 3,
                style: TextStyle(
                  color: const Color(0xFF8996A2),
                  fontWeight: FontWeight.w300,
                  fontSize: 12.sp,
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                SizedBox(
                  height: 36.h,
                  width: 27.w,
                  child: SvgPicture.asset(
                    'assets/images/xls.svg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 48.h - 44.h,
                      child: Text(
                        'Databse-MySQL.xls',
                        style: TextStyle(
                          color: const Color(0xFF111111),
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'Download',
                      style: TextStyle(
                          color: const Color(0xFF1A5CCE),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            elevatedButtonPress(343, 'View more', () => {}, AppColor.blue,
                AppColor.blue.withOpacity(0.2), null),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }

  Widget itemOfExams(BuildContext context, String? status) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Final exam',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: const Color(0xFF111111)),
                ),
                const Spacer(),
                Container(
                  height: 22.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
                  decoration: BoxDecoration(
                      color: status == 'Exam revision task'
                          ? const Color(0xFF44C4A1).withOpacity(0.1)
                          : Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(100.r))),
                  child: Text(
                    status!,
                    style: TextStyle(
                        color: status == 'Exam revision task'
                            ? const Color(0xFF44C4A1)
                            : const Color(0xFF111111),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //#flag
                    Row(
                      children: [
                        SizedBox(
                            height: 16.h,
                            width: 16.w,
                            child: SvgPicture.asset(
                              'assets/images/flag.svg',
                              color: AppColor.blue,
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 4.h,
                        ),
                        Text(
                          'Week 6',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF111111)),
                        )
                      ],
                    ),
                    8.verticalSpace,
                    //#Offline
                    Row(
                      children: [
                        Container(
                            height: 18.w,
                            width: 18.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9.w),
                                color: AppColor.blue),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/icons/camera.svg',
                                fit: BoxFit.cover,
                              ),
                            )),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          'Offline',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF111111)),
                        )
                      ],
                    ),
                  ],
                ),
                100.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                            height: 16.h,
                            width: 16.w,
                            child: SvgPicture.asset(
                              'assets/images/clock2.svg',
                              fit: BoxFit.cover,
                            )),
                        4.horizontalSpace,
                        Text(
                          '06.06.2022 10:30',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF111111)),
                        )
                      ],
                    ),
                    8.verticalSpace,
                    Row(
                      children: [
                        SizedBox(
                            height: 16.h,
                            width: 16.w,
                            child: SvgPicture.asset(
                              'assets/images/room.svg',
                              color: const Color(0xFFFFAD47),
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          'Room B705',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF111111)),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            8.verticalSpace,
            Row(
              children: const [],
            ),
            12.verticalSpace,
            SizedBox(
              width: MediaQuery.of(context).size.width - 32.h,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. aug sed duis cras vitae. Laoreet est molestie egestas dui, proin cursus quis blandit. Viverra eleifend vestibulum donec nunc. Suspendisse sed magna a tellus. Eget tortor turpis placerat sit sit id. In sit quis amet, purus ac turpis at. Enim scelerisque sed ultrices diam eget dictumst nec phasellus. Euismod at quis sed urna, et non porttitor turpis. Ut vitae interdum ut duis proin potenti adipiscing. Malesuada consequat, eget sit id dolor. Nunc tincidunt faucibus urna facilisis feugiat tincidunt sed. Interdum nibh sit ut at. At phasellus tortor quis nibh odio etiam convallis.',
                maxLines: 3,
                style: TextStyle(
                  color: const Color(0xFF8996A2),
                  fontWeight: FontWeight.w300,
                  fontSize: 12.sp,
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                SizedBox(
                  height: 36.h,
                  width: 27.w,
                  child: SvgPicture.asset(
                    'assets/images/xls.svg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 48.h - 44.h,
                      child: Text(
                        'Databse-MySQL.xls',
                        style: TextStyle(
                          color: const Color(0xFF111111),
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'Download',
                      style: TextStyle(
                          color: const Color(0xFF1A5CCE),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            elevatedButtonPress(343, 'View more', () => {}, AppColor.blue,
                AppColor.blue.withOpacity(0.2), null),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}
