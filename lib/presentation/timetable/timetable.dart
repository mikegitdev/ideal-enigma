import 'package:intl/intl.dart';

import '../../app_library/presentation/basic_library.dart';
import '../../controller/state_controller.dart';
import '../utils/app_color.dart';
import '../utils/custom_picker.dart';

class Timetable extends ConsumerStatefulWidget {
  @override
  _TimetableState createState() => _TimetableState();
}

class _TimetableState extends ConsumerState<Timetable> {
  List<Map<String, String>> timetable = [
    {
      'startTime': '09:00',
      'endTime': '09:50',
      'lesson': 'English',
      'room': 'B707',
      'teacher': 'Brooklyn Williamson'
    },
    {
      'startTime': '10:00',
      'endTime': '10:50',
      'lesson': 'Art',
      'room': 'B301',
      'teacher': 'John Adam'
    },
    {
      'startTime': '11:00',
      'endTime': '11:50',
      'lesson': 'Economics',
      'room': 'B801',
      'teacher': 'Abdujabbor Primkulov'
    },
    {
      'startTime': '12:00',
      'endTime': '12:50',
      'lesson': 'Management',
      'room': 'A502',
      'teacher': 'Olim Hasanov'
    },
  ];

  final DateTime _currentDate = DateTime.now();

  DateTime _selectedValue = DateTime.now();
  DatePickerController controller = DatePickerController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String weekday = DateFormat('E', 'en-US').format(_selectedValue);
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Column(
        children: [
          50.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _selectedValue.day.toString(),
                  style: TextStyle(
                      color: const Color(0xFF111111),
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w600),
                ),
                12.horizontalSpace,
                Text(
                  '${DateFormat("E", 'en-US').format(_selectedValue)}\n${DateFormat("MMM", 'en-US').format(_selectedValue)} ${_selectedValue.year}',
                  style: TextStyle(
                      color: const Color(0xFF8996A2),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    controller.animateToDate(_currentDate);
                    // _selectedValue = _currentDate;
                    setState(() {});
                  },
                  child: Container(
                    height: 32.h,
                    width: 72.w,
                    decoration: BoxDecoration(
                      color: AppColor.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Center(
                      child: Text(
                        'Today',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColor.blue),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          20.verticalSpace,
          Expanded(
              child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32.r),
                    topRight: Radius.circular(32.r))),
            child: Column(
              children: [
                16.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: DatePicker(
                    DateTime.now().subtract(const Duration(days: 3)),
                    width: 45.w,
                    height: 60.h,
                    controller: controller,
                    initialSelectedDate: _selectedValue,
                    selectionColor: const Color(0xFF44C4A1),
                    selectedTextColor: Colors.white,
                    dayTextStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                    dateTextStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                    onDateChange: (date) {
                      // New date selected
                      setState(() {
                        _selectedValue = date;
                      });
                    },
                  ),
                ),
                5.verticalSpace,
                Divider(
                  thickness: 1.h,
                  color: const Color(0xFFEFF1F3),
                ),
                16.verticalSpace,
                weekday == 'Sun'
                    ? 0.verticalSpace
                    : Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          children: [
                            Text(
                              'Time',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: const Color(0xFF8996A2)),
                            ),
                            45.horizontalSpace,
                            Text(
                              'Course',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: const Color(0xFF8996A2)),
                            ),
                          ],
                        ),
                      ),
                weekday == 'Sun'
                    ? noData()
                    : Expanded(
                        child: ScrollConfiguration(
                          behavior: const MaterialScrollBehavior()
                              .copyWith(overscroll: false),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                ...List.generate(
                                    timetable.length,
                                    (index) => Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.w),
                                          child: Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    timetable[index]
                                                        ['startTime']!,
                                                    style: TextStyle(
                                                        color: const Color(
                                                            0xFF111111),
                                                        fontSize: 16.sp,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  4.verticalSpace,
                                                  Text(
                                                    timetable[index]
                                                        ['endTime']!,
                                                    style: TextStyle(
                                                        color: const Color(
                                                            0xFF8996A2),
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                              16.horizontalSpace,
                                              Container(
                                                width: 2.w,
                                                height: 128.h,
                                                color: const Color(0xFFEFF1F3),
                                              ),
                                              16.horizontalSpace,
                                              (ref.watch(currentTime).compareTo(
                                                              timetable[index][
                                                                  'startTime']!) >=
                                                          0 &&
                                                      ref
                                                              .watch(
                                                                  currentTime)
                                                              .compareTo(timetable[
                                                                      index][
                                                                  'endTime']!) <=
                                                          0)
                                                  ? Container(
                                                      height: 120.h,
                                                      width: 250.w,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 8.h),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 12.h,
                                                              horizontal: 16.w),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.r),
                                                          color: AppColor.blue),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                timetable[index]
                                                                    ['lesson']!,
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      16.sp,
                                                                ),
                                                              ),
                                                              const Spacer(),
                                                              Container(
                                                                height: 6.h,
                                                                width: 6.h,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(3
                                                                            .h),
                                                                    color: AppColor
                                                                        .whiteGreen),
                                                              ),
                                                              4.horizontalSpace,
                                                              Text(
                                                                'Ongoing',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize:
                                                                      12.sp,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          10.verticalSpace,
                                                          Text(
                                                            'Chapter 1: Introduction',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12.sp,
                                                            ),
                                                          ),
                                                          12.verticalSpace,
                                                          Row(
                                                            children: [
                                                              SvgPicture.asset(
                                                                'assets/images/room.svg',
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              10.horizontalSpace,
                                                              Text(
                                                                timetable[index]
                                                                    ['room']!,
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize:
                                                                      12.sp,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          8.verticalSpace,
                                                          Row(
                                                            children: [
                                                              Container(
                                                                height: 16.h,
                                                                width: 16.h,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.h)),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/ProfileCards/profileImage.png',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              10.horizontalSpace,
                                                              Text(
                                                                timetable[index]
                                                                    [
                                                                    'teacher']!,
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize:
                                                                      12.sp,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  : Container(
                                                      height: 120.h,
                                                      width: 250.w,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 8.h),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 12.h,
                                                              horizontal: 16.w),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.r),
                                                          color: const Color(
                                                              0xFFF6F6F5)),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                timetable[index]
                                                                    ['lesson']!,
                                                                style:
                                                                    TextStyle(
                                                                  color: const Color(
                                                                      0xFF111111),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      16.sp,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          10.verticalSpace,
                                                          Text(
                                                            'Chapter 1: Introduction',
                                                            style: TextStyle(
                                                              color: const Color(
                                                                  0xFF111111),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12.sp,
                                                            ),
                                                          ),
                                                          12.verticalSpace,
                                                          Row(
                                                            children: [
                                                              SvgPicture.asset(
                                                                'assets/images/room.svg',
                                                                color: const Color(
                                                                    0xFF111111),
                                                              ),
                                                              10.horizontalSpace,
                                                              Text(
                                                                timetable[index]
                                                                    ['room']!,
                                                                style:
                                                                    TextStyle(
                                                                  color: const Color(
                                                                      0xFF111111),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize:
                                                                      12.sp,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          8.verticalSpace,
                                                          Row(
                                                            children: [
                                                              Container(
                                                                height: 16.h,
                                                                width: 16.h,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.h)),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/ProfileCards/profileImage.png',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              10.horizontalSpace,
                                                              Text(
                                                                timetable[index]
                                                                    [
                                                                    'teacher']!,
                                                                style:
                                                                    TextStyle(
                                                                  color: const Color(
                                                                      0xFF111111),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize:
                                                                      12.sp,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                            ],
                                          ),
                                        )),
                                60.verticalSpace
                              ],
                            ),
                          ),
                        ),
                      )
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget noData() {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150.h,
              width: 151.5.w,
              child: SvgPicture.asset(
                'assets/images/noTimetable.svg',
                fit: BoxFit.cover,
              ),
            ),
            16.verticalSpace,
            Text(
              'No Notifications Yet',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF111111)),
            ),
            4.verticalSpace,
            Text(
              'When you get notifications, they’ll show up here',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF8996A2)),
            ),
          ],
        ),
      ),
    );
  }
}
