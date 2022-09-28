import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../controller/state_controller.dart';
import '../../app_library/presentation/basic_library.dart';
import '../utils/app_color.dart';

class SyllabusView extends HookConsumerWidget {
  final List<Map<String, String>> tasks = [
    {
      'icon': 'assets/images/pdf.svg',
      'name': 'ReactJS-for-beginner.pdf',
    },
    {
      'icon': 'assets/images/doc.svg',
      'name': 'Summary-of-php.docx',
    },
    {'icon': 'assets/images/xls.svg', 'name': 'Database-MySQL.xls'},
    {
      'icon': 'assets/images/pdf.svg',
      'name': 'ReactJS-for-beginner.pdf',
    },
    {
      'icon': 'assets/images/doc.svg',
      'name': 'Summary-of-php.docx',
    },
    {'icon': 'assets/images/xls.svg', 'name': 'Database-MySQL.xls'},
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 8; i++) ...{
              itemOfSyllabus(
                  context,
                  ref,
                  'Week 1. Introduction to Computers, Programs, and Javafile',
                  ref.watch(isLoading))
            }
          ],
        ),
      ),
    );
  }

  Widget itemOfSyllabus(
      BuildContext context, WidgetRef ref, String text, bool isLoadingPrv) {
    return InkWell(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.h),
                topRight: Radius.circular(25.h)),
          ),
          builder: (BuildContext context) {
            return DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.h),
                      topRight: Radius.circular(25.h)),
                  color: Colors.white,
                ),
                child: ScrollConfiguration(
                  behavior: const MaterialScrollBehavior()
                      .copyWith(overscroll: false),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(24.h),
                          //width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Week 1. Introduction to Computers, Programs, and Javafile',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: const Color(0xFF111111),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 0.h,
                        ),
                        for (int i = 0; i < tasks.length; i++) ...{
                          itemOfTasks(context, ref, tasks[i]['icon'],
                              tasks[i]['name'], isLoadingPrv),
                          SizedBox(
                            height: 24.h,
                          )
                        },
                        60.verticalSpace
                      ],
                    ),
                  ),
                ));
          },
        ).whenComplete(() => ref.read(isLoading.state).state = false);
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                height: 64.h,
                width: 40.h,
                child: SvgPicture.asset(
                  'assets/logo/file.svg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Expanded(
                  child: Text(
                text,
                style: TextStyle(
                    color: const Color(0xFF111111),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp),
              )),
              SvgPicture.asset(
                'assets/images/bottom.svg',
              ),
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

  Widget itemOfTasks(BuildContext context, WidgetRef ref, String? iconOfTask,
      String? nameOfTask, bool isLoadingPrv) {
    return StatefulBuilder(
      builder: (context, StateSetter setState) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          height: 36.h,
          color: Colors.white,
          child: Row(
            children: [
              SizedBox(
                height: 36.h,
                width: 27.w,
                child: SvgPicture.asset(
                  iconOfTask!,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 48.h - 43.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          nameOfTask!,
                          style: TextStyle(
                            color: const Color(0xFF111111),
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                          ),
                        ),
                        ref.watch(isLoading)
                            ? InkWell(
                                onTap: () {
                                  ref.read(isLoading.state).state = false;
                                  setState(() {});
                                  // ref.refresh(isLoading);
                                  //isLoading = true;
                                  if (kDebugMode) {
                                    print('$isLoadingPrv====');
                                  }
                                },
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                      color: const Color(0xFF8996A2),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            : Text(
                                '13.8 MB',
                                style: TextStyle(
                                  color: const Color(0xFF111111),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                      ],
                    ),
                  ),
                  ref.watch(isLoading) ? 12.verticalSpace : 4.verticalSpace,
                  ref.watch(isLoading)
                      ? LinearPercentIndicator(
                          width:
                              MediaQuery.of(context).size.width - 48.h - 43.w,
                          lineHeight: 5.0.h,
                          animation: true,
                          padding: const EdgeInsets.all(0),
                          animationDuration: 3000,
                          percent: 1.0,
                          barRadius: const Radius.circular(200),
                          backgroundColor:
                              const Color(0xFF44C4A1).withOpacity(0.15),
                          progressColor: const Color(0xFF44C4A1),
                        )
                      : InkWell(
                          onTap: () {
                            ref.read(isLoading.state).state = true;
                            setState(() {});
                          },
                          child: Text(
                            'Download',
                            style: TextStyle(
                                color: AppColor.blue,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
