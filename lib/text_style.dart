import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

class TextStyles {
  TextStyles._();

  static final defaultStyle = GoogleFonts.poppins(
    fontSize: 15.sp,
  );

  static var defaultplacerHolderStyle = GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.normal,
      color: const Color(0xFF666666));

  static var dfaultplacerHolderStyle = GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
      color: const Color(0xFF212121));

  static var placerHolderStyle = GoogleFonts.poppins(
      fontSize: 15.sp,
      fontWeight: FontWeight.normal,
      color: const Color(0xFF666666));

  static var mandatoryFieldStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w400, fontSize: 12.sp, color: AppColors.Red);

  static var dropDownHintStyle = TextStyles.defaultStyle
      .copyWith(color: AppColors.appGray, fontSize: 20.sp);
}
