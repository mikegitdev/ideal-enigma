import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/customSwitch.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({Key? key}) : super(key: key);

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  TextStyle style = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400);

  bool allNotifications = true;

  bool playSound = false;

  bool newAssignment = true;

  bool beforeTheDeadline = false;

  bool grade = false;

  bool something = false;

  bool timeNewAssignment = true;

  bool timeBeforeTheDeadline = false;

  bool timeGrade = false;

  bool timeSomething = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Notification',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
                color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
                padding: EdgeInsets.all(8.h),
                child: SvgPicture.asset(
                  'assets/logo/arrowLeft.svg',
                )),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Notifications',
                  style: style,
                ),
                CustomSwitch(
                  value: allNotifications,
                  onChanged: (va) {
                    setState(() {
                      allNotifications = va;
                    });
                  },
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Play sound',
                  style: style,
                ),
                CustomSwitch(
                  value: playSound,
                  onChanged: (va) {
                    setState(() {
                      playSound = va;
                    });
                  },
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Assignments & Exams',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Assignment',
                  style: style,
                ),
                CustomSwitch(
                  value: newAssignment,
                  onChanged: (va) {
                    setState(() {
                      newAssignment = va;
                    });
                  },
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Before the deadline',
                  style: style,
                ),
                CustomSwitch(
                  value: beforeTheDeadline,
                  onChanged: (va) {
                    setState(() {
                      beforeTheDeadline = va;
                    });
                  },
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grade',
                  style: style,
                ),
                CustomSwitch(
                  value: grade,
                  onChanged: (va) {
                    setState(() {
                      grade = va;
                    });
                  },
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Something',
                  style: style,
                ),
                CustomSwitch(
                  value: something,
                  onChanged: (va) {
                    setState(() {
                      something = va;
                    });
                  },
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Assignments & Exams',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Assignment',
                  style: style,
                ),
                CustomSwitch(
                  value: timeNewAssignment,
                  onChanged: (va) {
                    setState(() {
                      timeNewAssignment = va;
                    });
                  },
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Before the deadline',
                  style: style,
                ),
                CustomSwitch(
                  value: timeBeforeTheDeadline,
                  onChanged: (va) {
                    setState(() {
                      timeBeforeTheDeadline = va;
                    });
                  },
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grade',
                  style: style,
                ),
                CustomSwitch(
                  value: timeGrade,
                  onChanged: (va) {
                    setState(() {
                      timeGrade = va;
                    });
                  },
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Something',
                  style: style,
                ),
                CustomSwitch(
                  value: timeSomething,
                  onChanged: (va) {
                    setState(() {
                      timeSomething = va;
                    });
                  },
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
