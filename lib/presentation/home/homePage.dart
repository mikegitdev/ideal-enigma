import 'package:lms/presentation/home/notification.dart';

import '../../app_library/presentation/basic_library.dart';
import '../utils/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool hasTasks = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: InkWell(
                        onTap: () {
                          context.push('/ProfileSetting');
                        },
                        child: CircleAvatar(
                          child: Image.asset(
                            'assets/images/ProfileCards/profileImage.png',
                            width: 40,
                            height: 40,
                          ),
                        )),
                    title: const Text('Hello Murodjon 👋🏻'),
                    subtitle: const Text('Suspense integer curses.'),
                    trailing: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NotificationPage()),
                          );
                        },
                        child:
                            SvgPicture.asset('assets/logo/notification.svg')),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'My Courses',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                          child: const Text(
                            'View more',
                            style: TextStyle(
                                color: AppColor.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          onPressed: () {}),
                    ],
                  ),
                  SizedBox(
                    height: 250.h,
                    child: GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 240,
                          childAspectRatio: 2 / 1.5,
                          crossAxisSpacing: 9,
                          mainAxisSpacing: 9,
                        ),
                        children: [
                          InkWell(
                            onTap: () {
                              context.push('/Course');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/Banner.png'),
                                const SizedBox(
                                  height: 12,
                                ),
                                const Text(
                                  'Java \n Programming',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              context.push('/Course');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/Banner2.png'),
                                const SizedBox(
                                  height: 12,
                                ),
                                const Text(
                                  'Artificial \nIntelligence',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              context.push('/Course');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/Banner3.png'),
                                const SizedBox(
                                  height: 12,
                                ),
                                const Text(
                                  'Academic \nEnglish',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              context.push('/Course');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/Banner4.png'),
                                const SizedBox(
                                  height: 12,
                                ),
                                const Text(
                                  'Art \nDesign',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                          // Column(
                          //   mainAxisAlignment: MainAxisAlignment.start,
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Image.asset('assets/images/Banner3.png'),
                          //     const SizedBox(
                          //       height: 12,
                          //     ),
                          //     const Text(
                          //       'Academic \nEnglish',
                          //       style: TextStyle(
                          //           fontSize: 16, fontWeight: FontWeight.w600),
                          //       textAlign: TextAlign.start,
                          //     ),
                          //   ],
                          // ),
                          // Column(
                          //   mainAxisAlignment: MainAxisAlignment.start,
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Image.asset('assets/images/Banner4.png'),
                          //     const SizedBox(
                          //       height: 12,
                          //     ),
                          //     const Text(
                          //       'Art \nDesign',
                          //       style: TextStyle(
                          //           fontSize: 16, fontWeight: FontWeight.w600),
                          //       textAlign: TextAlign.start,
                          //     ),
                          //   ],
                          // ),
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming ',
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.w600),
                      ),
                      hasTasks
                          ? TextButton(
                              onPressed: () {},
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColor.blue,
                                    fontWeight: FontWeight.w400),
                              ))
                          : SizedBox(
                              width: 5.w,
                            ),
                    ],
                  ),
                  hasTasks
                      ? SizedBox(
                          height: 190.h,
                          child: ListView(
                            physics: const BouncingScrollPhysics(),
                            padding: EdgeInsets.zero,
                            children: [
                              InkWell(
                                onTap: () {
                                  context.push('/AssignmentDetailPage');
                                },
                                child: ListTile(
                                  leading: SvgPicture.asset(
                                    'assets/logo/math.svg',
                                    width: 48.w,
                                    height: 48,
                                  ),
                                  title: Text(
                                    'HW from Calculus',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: Text(
                                    'Today 11:59PM  ',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  context.push('/AssignmentDetailPage');
                                },
                                child: ListTile(
                                  leading: SvgPicture.asset(
                                    'assets/logo/date.svg',
                                    width: 48.w,
                                    height: 48.h,
                                  ),
                                  title: Text(
                                    'HW from Data Structure',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: Text(
                                    'Today 11:59PM  ',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  context.push('/AssignmentDetailPage');
                                },
                                child: ListTile(
                                  leading: SvgPicture.asset(
                                    'assets/logo/language.svg',
                                    width: 48.w,
                                    height: 48.h,
                                  ),
                                  title: Text(
                                    'HW from Academic English',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: Text(
                                    'Today 11:59PM  ',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  context.push('/AssignmentDetailPage');
                                },
                                child: ListTile(
                                  leading: SvgPicture.asset(
                                    'assets/logo/language2.svg',
                                    width: 48.w,
                                    height: 48.h,
                                  ),
                                  title: Text(
                                    'HW from Academic English',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: Text(
                                    'Today 11:59PM  ',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  context.push('/AssignmentDetailPage');
                                },
                                child: ListTile(
                                  leading: SvgPicture.asset(
                                    'assets/logo/language3.svg',
                                    width: 48.w,
                                    height: 48.h,
                                  ),
                                  title: Text(
                                    'HW from Academic English',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: Text(
                                    'Today 11:59PM  ',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                ),
                              ),
                            ],
                          ))
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Not Found illustration.png',
                              width: 155,
                              height: 150,
                            ),
                            Text(
                              'There are no tasks yet',
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'You can see assignments\n when mentors upload them',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black26,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                ]),
          ),
        ),
      ),
    );
  }
}
