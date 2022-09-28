import '../../app_library/presentation/basic_library.dart';

class AssignmentDetailPage extends StatelessWidget {
  const AssignmentDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Assignment',
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
                    'Homework #3',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
                    // width: 108.w,
                    height: 26.h,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(254, 69, 87, 0.1),
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Text(
                      'No submission',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: const Color(0xFFFE4557)),
                    ),
                  )
                ],
              ),
              13.verticalSpace,
              Row(
                children: [
                  SvgPicture.asset('assets/logo/flag.svg'),
                  6.verticalSpace,
                  Text(
                    'Week 6',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              8.verticalSpace,
              Row(
                children: [
                  SvgPicture.asset('assets/logo/clock.svg'),
                  6.verticalSpace,
                  Text(
                    '06.06.2022 10:30 ~ 10.06.2022 23:55 ',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              8.verticalSpace,
              Row(
                children: [
                  SvgPicture.asset('assets/logo/rankingGreen.svg'),
                  6.verticalSpace,
                  Text(
                    'Max. Scor: 10  ',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                  )
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
              24.verticalSpace,
              Text(
                'Attach your homework file',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
              ),
              16.verticalSpace,
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: SvgPicture.asset('assets/logo/IconPDF.svg'),
                title: Text(
                  'ReactJS-for-beginner.pdf',
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
                trailing: Text(
                  '4.5 MB',
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
                ),
              ),
              24.verticalSpace,
              Text(
                'Commet',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
              ),
              8.verticalSpace,
              Text(
                '''Share your experience - Good and Bad \nThink back in the past and tell me about the situation, the actions you took, and the consequences afterward. (More than 150 words total)''',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: const Color(0xFF8996A2)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
