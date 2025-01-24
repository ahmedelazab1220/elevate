import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/utils/app_colors.dart';
import 'shimmer_view_body.dart';

class ShimmerView extends StatelessWidget {
  const ShimmerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.46,
      padding: EdgeInsets.only(
        top: 5.h,
        bottom: 15.h,
        left: 5.w,
        right: 5.w,
      ),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: AppColors.borderColor,
          width: 3.r,
        ),
      ),
      child: ShimmerViewBody(),
    );
  }
}
