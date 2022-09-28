

import '../../app_library/presentation/basic_library.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 60.h,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Image.asset(
                'assets/images/ProfileCards/ProfileImage2.png',
                alignment: Alignment.center,
                width: 96.w,
                height: 96.h,
              ),
              Text('Matchanov Muhammadjon \nSarvarbek o’gli',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                  textAlign: TextAlign.center),
              Text(
                'Student iD: YTIT-123456789',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: Colors.black38),
              )
            ],
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 32.h,
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/logo/user.svg',
              ),
              title: Text(
                'Personal information',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
              ),
              onTap: () {
                context.push('/PersonalInformation');
              },
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              onTap: () {
                context.push('/MyCourses');
              },
              leading: SvgPicture.asset('assets/logo/book.svg'),
              title: Text(
                'My courses',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              onTap: () {
                context.push('/MyGrade');
              },
              leading: SvgPicture.asset('assets/logo/ranking.svg'),
              title: Text(
                'Grade',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              onTap: () {
                context.push('/Setting');
              },
              leading: SvgPicture.asset('assets/logo/setting.svg'),
              title: Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              leading: SvgPicture.asset('assets/logo/info-circle.svg'),
              title: Text(
                'Help',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              leading: SvgPicture.asset('assets/logo/headphone.svg'),
              title: Text(
                'Contact Us',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              leading: SvgPicture.asset('assets/logo/logout.svg'),
              title: Text(
                'Contact Us',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
          ],
        ),
      ]),
    );
  }
}
