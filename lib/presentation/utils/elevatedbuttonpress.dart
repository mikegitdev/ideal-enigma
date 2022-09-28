import '../../app_library/presentation/basic_library.dart';

Widget elevatedButtonPress(
  double width,
  String text,
  Function() press,
  Color? textColor,
  Color? backColor,
  Color? borderSideColor,
) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: backColor,
      shadowColor:
          Colors.transparent, // const Color.fromRGBO(12, 87, 175, 0.5),
      fixedSize: Size(
        width.w,
        40.h,
      ),
      side: borderSideColor == null
          ? const BorderSide(color: Colors.transparent, width: 0)
          : BorderSide(color: borderSideColor, width: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          8.0.r,
        ),
      ),
      elevation: 0.0,
    ),
    onPressed: press,
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14.sp,
        color: textColor,
      ),
    ),
  );
}
