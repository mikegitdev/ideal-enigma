import 'package:readmore/readmore.dart';

import 'package:lms/presentation/utils/app_color.dart';

import '../../app_library/presentation/basic_library.dart';

class CourseInfo extends ConsumerStatefulWidget {
  @override
  _CourseInfoState createState() => _CourseInfoState();
}

class _CourseInfoState extends ConsumerState<CourseInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Course info',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF272835)),
            ),
            SizedBox(
              height: 12.h,
            ),
            ReadMoreText(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie sed mattis neque pellentesque. Tortor, integer a, iaculis scelerisque elementum. Morbi facilisi quam cras ultrices velit accumsan a lacus sed. Nunc, adipis',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xFF111111)),
              trimLines: 3,
              colorClickableText: Colors.pink,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Read more',
              trimExpandedText: ' Less',
              moreStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.blue),
              lessStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.blue),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Mentors',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF111111)),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                Container(
                  height: 40.h,
                  width: 40.h,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20.h)),
                  child: Image.asset(
                    'assets/images/mentor.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 12.h,
                ),
                Column(
                  children: [
                    Text(
                      'Jeong Eun-Kyung',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF111111)),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'Associate Professor',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                Container(
                  height: 40.h,
                  width: 40.h,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20.h)),
                  child: Image.asset(
                    'assets/images/asistent.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 12.h,
                ),
                Column(
                  children: [
                    Text(
                      'Ronald Richards',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF111111)),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'Teacher Assistant',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Office Hours',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/room.svg',
                  height: 20.h,
                  width: 18.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  'Room B707',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF8996A2)),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/images/clock.svg',
                  height: 20.h,
                  width: 18.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  'Monday 02:00 - 03:30 PM,\nFriday 02:00 - 03:30 PM ',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF8996A2)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
