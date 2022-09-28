import 'package:lms/presentation/utils/elevatedbuttonpress.dart';

import '../../app_library/presentation/basic_library.dart';
import '../utils/app_color.dart';

class Exams extends ConsumerStatefulWidget {
  @override
  _ExamsState createState() => _ExamsState();
}

class _ExamsState extends ConsumerState<Exams> {
  List<Map<String, String>> examList = [
    {
      'status': 'Exam revision task',
    },
    {
      'status': 'Score: 86/100',
    },
    {
      'status': 'Exam revision task',
    },
    {
      'status': 'Score: 80/100',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0xFFF8F8FF),
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < examList.length; i++) ...{
              itemOfExams(
                examList[i]['status'],
              )
            }
          ],
        ),
      ),
    );
  }

  Widget itemOfExams(String? status) {
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
                        SizedBox(
                            height: 16.h,
                            width: 16.w,
                            child: SvgPicture.asset(
                              'assets/images/offline_cam.svg',
                              fit: BoxFit.cover,
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
