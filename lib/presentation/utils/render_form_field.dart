import 'package:lms/app_library/presentation/basic_library.dart';

import 'app_color.dart';

renderTextFormField(
    {required String hint,
    required FormFieldSetter onSaved,
    required FormFieldValidator validator,
    required TextInputType textInputType,
    required TextEditingController controller,
    required bool obscured}) {
  return Column(
    children: [
      TextFormField(
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
        ),
        obscureText: obscured,
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff8996A2)),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: Color(0xff8996A2)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: AppColor.red),
          ),
          fillColor: AppColor.white,
        ),
        onSaved: onSaved,
        validator: validator,
      ),
    ],
  );
}
