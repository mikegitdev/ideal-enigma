import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Setting',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            ListTile(
              onTap: () {
                context.push('/ChangeTheme');
              },
              leading: SvgPicture.asset('assets/logo/ethereum.svg'),
              title: Text(
                'Theme',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
              ),
              trailing: Text('System defualt',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black38,
                  )),
            ),
            ListTile(
              onTap: () {
                context.push('/NotificationSetting');
              },
              leading: SvgPicture.asset('assets/logo/notification_small.svg'),
              title: Text(
                'Notification and Sounds',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              onTap: () {
                context.push('/ChangePassword');
              },
              leading: SvgPicture.asset('assets/logo/security-safe.svg'),
              title: Text(
                'Privacy and Security',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              onTap: () {
                context.push('/ChangeLanguages');
              },
              leading: SvgPicture.asset('assets/logo/language-circle.svg'),
              title: Text(
                'Languages',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
