import '../../app_library/presentation/basic_library.dart';
import 'app_color.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/No Connection illustartion.png',
              width: 187,
              height: 150,
            ),
            Text(
              'Lost Connection',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),
            Text(
              'Whoops, no internet connection \n found. Please check your connection',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black26,
              ),
              textAlign: TextAlign.center,
            ),
            32.verticalSpace,
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColor.blue,
                  shadowColor: Colors
                      .transparent, // const Color.fromRGBO(12, 87, 175, 0.5),
                  fixedSize: Size(
                    250.w,
                    40.h,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      8.0.r,
                    ),
                  ),
                  elevation: 0.0,
                ),
                onPressed: () {},
                child: Text(
                  'Try Again',
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
    );
  }
}
