import '../../app_library/presentation/basic_library.dart';
import '../utils/app_color.dart';

class Attendance extends ConsumerStatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends ConsumerState<Attendance> {
  List<Map<String, String>> attendanceList = [
    {
      'time': '17 Jun',
      'attendance': 'Present',
    },
    {
      'time': '12 Jun',
      'attendance': 'Absent',
    },
    {'time': '15 Jun', 'attendance': 'Late'},
    {
      'time': '17 Jun',
      'attendance': 'Present',
    },
    {
      'time': '12 Jun',
      'attendance': 'Absent',
    },
    {'time': '15 Jun', 'attendance': 'Late'},
    {'time': '15 Jun', 'attendance': 'Late'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < attendanceList.length; i++) ...{
              itemOfAttendance(
                  attendanceList[i]['time'], attendanceList[i]['attendance'])
            }
          ],
        ),
      ),
    );
  }

  Widget itemOfAttendance(String? time, String? attendance) {
    return SizedBox(
      height: 64.h,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 40.h,
                width: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.h),
                    color: AppColor.blue),
                child: Center(
                  child: Text(
                    time!,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 10.sp),
                  ),
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Week 4. Class 2',
                      style: TextStyle(
                          color: const Color(0xFF111111),
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      '17.06.2022 16:27',
                      style: TextStyle(
                          color: const Color(0xFF8996A2),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
              ),
              Text(
                attendance!,
                style: TextStyle(
                    color: attendance == 'Present'
                        ? const Color(0xFF44C4A1)
                        : attendance == 'Absent'
                            ? const Color(0xFFFE4557)
                            : const Color(0xFFFFAD47),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          const Divider(
            thickness: 1,
            color: Color(0xFFE5E5E5),
          )
        ],
      ),
    );
  }
}
