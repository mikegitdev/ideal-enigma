import '../../app_library/presentation/basic_library.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);
  final bool hasNotification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Notification',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
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
      body: Center(
        child: hasNotification
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: SvgPicture.asset(
                              'assets/logo/Icon.svg',
                              width: 56.w,
                              height: 56.h,
                            ),
                            title: Text(
                              'Application Programming in Java -Week 5',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w500),
                            ),
                            subtitle: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                6.verticalSpace,
                                const Text('New Assignment has been added'),
                                6.verticalSpace,
                                const Text('10.06.2022'),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                          )
                        ],
                      );
                    }))
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/No Notification illustration.png',
                    width: 151,
                    height: 150,
                  ),
                  Text(
                    'No Notifications Yet',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'When you get notifications, they’ll \n show up here',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black26,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Refresh',
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w500),
                      ))
                ],
              ),
      ),
    );
  }
}
