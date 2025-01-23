import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

abstract class AppIcons {
  static Icon addIcon = Icon(
    Icons.add,
    color: Colors.white,
    size: 30.h,
  );

  static Icon starIcon = Icon(
    Icons.star,
    color: AppColors.goldColor,
    size: 22.h,
  );

  static const Icon favIcon = Icon(
    Icons.favorite,
    color: AppColors.redColor,
  );

  static const Icon favBorderIcon = Icon(
    Icons.favorite_border_outlined,
    color: AppColors.primaryColor,
  );
}
