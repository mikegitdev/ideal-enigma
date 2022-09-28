import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:lms/presentation/utils/app_color.dart';

import '../../app_library/presentation/basic_library.dart';

class AttendanceView extends StatefulWidget {
  const AttendanceView({Key? key}) : super(key: key);

  @override
  State<AttendanceView> createState() => _AttendanceViewState();
}

class _AttendanceViewState extends State<AttendanceView> {
  List<String> subjectList = [
    'Academic English',
    'Artificial Intelligence',
    'Calculus',
    'Java  Programming',
    'Art Design',
  ];

  String subject = 'Academic English';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          width: MediaQuery.of(context).size.width * 0.55,
          child: Center(
            child: DropdownButtonFormField2(
              icon: SvgPicture.asset('assets/icons/StrokeIcon.svg'),
              items: subjectList.map((String category) {
                return DropdownMenuItem(
                  value: category,
                  child: Text(category,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          color: const Color(0xff111111))),
                );
              }).toList(),
              onChanged: (newValue) {
                subject = newValue.toString();
              },
              value: subject,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none),
              iconEnabledColor: AppColor.blue,
              iconDisabledColor: Colors.black,
              dropdownPadding: EdgeInsets.only(
                top: 8.h,
                bottom: 8.h,
              ),
              itemHeight: 40.h,
              dropdownMaxHeight: 300.h,
              scrollbarAlwaysShow: false,
              dropdownWidth: MediaQuery.of(context).size.width * 0.6,
              itemPadding: EdgeInsets.symmetric(horizontal: 10.h),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.h),
              ),
              dropdownElevation: 1,
            ),
          ),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return itemOfList();
              })),
    );
  }

  itemOfList() {
    return Column(
      children: [
        Container(
          width: 343.w,
          height: 72.h,
          padding: EdgeInsets.symmetric(vertical: 12.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.h),
                width: 48.h,
                height: 48.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.h),
                  color: const Color(0xff1A5CCE),
                ),
                child: Center(
                    child: Text(
                  '17 Jun',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                )),
              ),
              SizedBox(
                width: 16.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Week 4. Class 2',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: Colors.black)),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text('17.06.2022 16:27',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: const Color(0xff8996A2))),
                ],
              ),
              const Spacer(),
              Text('Present',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: const Color(0xff44C4A1))),
            ],
          ),
        ),
        Divider(
          color: const Color(0xffE5E5E5),
          thickness: 1.h,
        )
      ],
    );
  }
}
