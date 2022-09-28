import '../../app_library/presentation/basic_library.dart';

class Announcements extends ConsumerStatefulWidget {
  @override
  _AnnouncementsState createState() => _AnnouncementsState();
}

class _AnnouncementsState extends ConsumerState<Announcements> {
  List<Map<String, String>> announcementList = [
    {
      'icon': 'assets/images/announcement1.svg',
    },
    {
      'icon': 'assets/images/announcement2.svg',
    },
    {
      'icon': 'assets/images/announcement3.svg',
    },
    {
      'icon': 'assets/images/announcement4.svg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < announcementList.length; i++) ...{
              itemOfAnnouncements(announcementList[i]['icon'])
            }
          ],
        ),
      ),
    );
  }

  Widget itemOfAnnouncements(String? icon) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                  height: 56.h,
                  width: 56.w,
                  child: SvgPicture.asset(
                    icon!,
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                width: 16.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 48.h - 56.h,
                    child: Text(
                      'Application Programming in Java - Week 5',
                      style: TextStyle(
                          color: const Color(0xFF111111),
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    'New Assignment has been added.',
                    style: TextStyle(
                        color: const Color(0xFF8996A2),
                        fontWeight: FontWeight.w300,
                        fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    '10.06.2022',
                    style: TextStyle(
                        color: const Color(0xFF8996A2),
                        fontWeight: FontWeight.w300,
                        fontSize: 10.sp),
                  ),
                ],
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
}
