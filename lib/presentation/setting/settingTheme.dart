import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({Key? key}) : super(key: key);

  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  bool system = false;

  bool light = true;

  bool dark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Theme',
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
                light = false;
                system = true;
                dark = false;
              });
            },
            child: Row(
              children: [
                16.horizontalSpace,
                system
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
                  'System defualt',
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
                light = true;
                system = false;
                dark = false;
              });
            },
            child: Row(
              children: [
                16.horizontalSpace,
                light
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
                  'Light',
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
                light = false;
                system = false;
                dark = true;
              });
            },
            child: Row(
              children: [
                16.horizontalSpace,
                dark
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
                  'Dark',
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
