import 'package:lms/presentation/utils/elevatedbuttonpress.dart';

import '../../app_library/presentation/basic_library.dart';
import '../utils/app_color.dart';

class Assignments extends ConsumerStatefulWidget {
  @override
  _AssignmentsState createState() => _AssignmentsState();
}

class _AssignmentsState extends ConsumerState<Assignments> {
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
      'homeworkNumber': '3',
      'status': 'No submission',
    },
    {
      'homeworkNumber': '4',
      'status': 'Score: 80/100 ',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0xFFF8F8FF),
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < assignmentList.length; i++) ...{
              itemOfAnnouncements(
                assignmentList[i]['homeworkNumber'],
                assignmentList[i]['status'],
              )
            }
          ],
        ),
      ),
    );
  }

  Widget itemOfAnnouncements(String? homeworkNumber, String? status) {
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
                          color: AppColor.blue,
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
