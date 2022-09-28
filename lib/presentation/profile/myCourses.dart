import '../../app_library/presentation/basic_library.dart';

class MyCourses extends StatelessWidget {
  const MyCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'My Courses',
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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 280.w,
                  child: DropdownButtonFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                      border: OutlineInputBorder(),
                    ),
                    elevation: 5,
                    isExpanded: true,
                    hint: const Text('Spring semester 2022'),
                    items: null,
                    onChanged: null,
                  ),
                ),
                16.horizontalSpace,
                SvgPicture.asset(
                  'assets/logo/filter.svg',
                )
              ],
            ),
            16.verticalSpace,
            SizedBox(
              height: 370,
              child: GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
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
                          Text(
                            'Java \n Programming',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w600),
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
                          Text(
                            'Artificial \nIntelligence',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w600),
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
                          Text(
                            'Academic \nEnglish',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w600),
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
                          Text(
                            'Art \nDesign',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
