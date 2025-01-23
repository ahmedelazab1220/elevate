import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/utils/app_styles.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({super.key, required this.price});
  final num price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 7.w),
          child: Text(
            'EGP : $price',
            style: AppStyles.textStyle14,
          ),
        ),
        // you must use ConstrainedBox to limit the width of the text
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 60.w,
          ),
          child: Text(
            '$price EGP',
            style: AppStyles.textStyle12.copyWith(
              decoration: TextDecoration.lineThrough,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
