import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

abstract class AppStyles {
  static final TextStyle textStyle16 = GoogleFonts.cairo(
    fontSize: 16.sp,
    color: AppColors.primaryColor,
  );

  static final TextStyle textStyle12 = GoogleFonts.cairo(
    fontSize: 12.sp,
    color: AppColors.darkBlueAccent,
  );

  static final TextStyle textStyle14 = GoogleFonts.cairo(
    fontSize: 14.sp,
    color: AppColors.darkBlueColor,
  );

  static final TextStyle textStyle13 = GoogleFonts.cairo(
    fontSize: 13.sp,
    color: AppColors.darkBlueColor,
  );
}
