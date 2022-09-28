import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChangeLanguages extends StatefulWidget {
  const ChangeLanguages({Key? key}) : super(key: key);

  @override
  State<ChangeLanguages> createState() => _ChangeLanguagesState();
}

class _ChangeLanguagesState extends State<ChangeLanguages> {
  bool uz = false;

  bool eng = true;

  bool ru = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Languages',
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
                padding: const EdgeInsets.all(8),
                child: SvgPicture.asset(
                  'assets/logo/arrowLeft.svg',
                )),
          )),
      body: Column(
        children: [
          16.verticalSpace,
          InkWell(
            onTap: () {
              setState(() {
                eng = true;
                uz = false;
                ru = false;
              });
            },
            child: Row(
              children: [
                16.horizontalSpace,
                eng
                    ? SizedBox(
                        width: 24.w,
                        height: 24.h,
                        child: const Icon(Icons.check))
                    : SizedBox(
                        width: 24.w,
                        height: 24.h,
                      ),
                12.horizontalSpace,
                Text(
                  'English',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Color(0xffE5E5E5),
          ),
          InkWell(
            onTap: () {
              setState(() {
                eng = false;
                uz = true;
                ru = false;
              });
            },
            child: Row(
              children: [
                16.horizontalSpace,
                uz
                    ? SizedBox(
                        width: 24.w,
                        height: 24.h,
                        child: const Icon(Icons.check))
                    : SizedBox(
                        width: 24.w,
                        height: 24.h,
                      ),
                12.horizontalSpace,
                Text(
                  'Uzbek',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Color(0xffE5E5E5),
          ),
          InkWell(
            onTap: () {
              setState(() {
                eng = false;
                uz = false;
                ru = true;
              });
            },
            child: Row(
              children: [
                16.horizontalSpace,
                ru
                    ? SizedBox(
                        width: 24.w,
                        height: 24.h,
                        child: const Icon(Icons.check))
                    : SizedBox(
                        width: 24.w,
                        height: 24.h,
                      ),
                12.horizontalSpace,
                Text(
                  'Russian',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Color(0xffE5E5E5),
          ),
        ],
      ),
    );
  }
}
