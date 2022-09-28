import '../../app_library/presentation/basic_library.dart';

class AssignmentExamPage extends StatelessWidget {
  const AssignmentExamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Exam',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              color: Colors.black),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset('assets/logo/arrowLeft.svg'),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              17.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Final Exam',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
                    // width: 108.w,
                    height: 26.h,
                    decoration: BoxDecoration(
                        color: const Color(0xFF44C4A1).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Text(
                      'Exam revision task',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: const Color(0xFF44C4A1)),
                    ),
                  )
                ],
              ),
              13.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/logo/flag.svg'),
                          6.verticalSpace,
                          Text(
                            'Week 6',
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      8.verticalSpace,
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/zoomVideoIcon.svg'),
                          8.verticalSpace,
                          Text(
                            'Offline',
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/logo/clock.svg'),
                          6.verticalSpace,
                          Text(
                            '06.06.2022 10:30 ',
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      8.verticalSpace,
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/roomIcon.svg'),
                          6.verticalSpace,
                          Text(
                            'Room B707',
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              16.verticalSpace,
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Massa augue sed duis cras vitae. Laoreet est molestie egestas dui, proin cursus quis blandit. Viverra eleifend vestibulum donec nunc. Suspendisse sed magna a tellus. Eget tortor turpis placerat sit sit id. In sit quis amet, purus ac turpis at. Enim scelerisque sed ultrices diam eget dictumst nec phasellus. Euismod at quis sed urna, et non porttitor turpis. Ut vitae interdum ut duis proin potenti adipiscing. Malesuada consequat, eget sit id dolor. Nunc tincidunt faucibus urna facilisis feugiat tincidunt sed. Interdum nibh sit ut at. At phasellus tortor quis nibh odio etiam convallis.',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: const Color(0xFF8996A2)),
              ),
              12.verticalSpace,
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: SvgPicture.asset('assets/logo/IconXLS.svg'),
                title: Text(
                  'Databse-MySQL.xls',
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  'Download',
                  style: TextStyle(
                      color: Colors.primaries.first,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp),
                ),
              ),
              16.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
