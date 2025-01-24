import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/shared_widget/shimmer_widget.dart';

class ShimmerViewBody extends StatelessWidget {
  const ShimmerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerWidget(
          width: MediaQuery.of(context).size.width,
          height: 90.h,
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.h, bottom: 3.h),
          child: ShimmerWidget(height: 20.h, width: (size.width * 0.5 - 100.w)),
        ),
        ShimmerWidget(height: 20.h, width: size.width),
        Padding(
          padding: EdgeInsets.only(bottom: 11.h, top: 8.h),
          child: Row(
            children: [
              ShimmerWidget(height: 20.h, width: (size.width * 0.125 + 20.w)),
              Spacer(),
              ShimmerWidget(height: 20.h, width: size.width * 0.125),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
        ShimmerWidget(height: 20.h, width: (size.width * 0.125 + 10.w)),
      ],
    );
  }
}
